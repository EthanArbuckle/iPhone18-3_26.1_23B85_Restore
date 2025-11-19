@interface CBSFetchBooksOperation
- (CBSFetchBooksOperation)initWithRequest:(id)a3;
- (void)finishOperation;
- (void)parseBookMetadataOperationDidFail:(id)a3;
- (void)parsePDFMetadataOperationDidFail:(id)a3;
- (void)run;
@end

@implementation CBSFetchBooksOperation

- (CBSFetchBooksOperation)initWithRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CBSFetchBooksOperation;
  v6 = [(CBSFetchBooksOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mRequest, a3);
  }

  return v7;
}

- (void)run
{
  mRequest = self->mRequest;
  v56 = 0;
  v4 = [(CRKFetchBooksRequest *)mRequest isValidWithError:&v56];
  v5 = v56;
  v6 = v5;
  if (v4)
  {
    if ([(CBSFetchBooksOperation *)self isCanceled])
    {
      v7 = CATErrorWithCodeAndUserInfo();
LABEL_50:
      v46 = v7;
      [(CBSFetchBooksOperation *)self endOperationWithError:v7];

      goto LABEL_53;
    }

    v8 = objc_opt_new();
    mBooks = self->mBooks;
    self->mBooks = v8;

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v10 = sub_1000024BC();
    v50 = [v10 countByEnumeratingWithState:&v52 objects:v59 count:16];
    if (!v50)
    {

      goto LABEL_52;
    }

    v47 = v6;
    v11 = 0;
    v49 = *v53;
    obj = v10;
LABEL_8:
    v12 = 0;
    while (1)
    {
      if (*v53 != v49)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v52 + 1) + 8 * v12);
      if (qword_100011E98 != -1)
      {
        sub_1000051F0();
      }

      v14 = qword_100011E90;
      if (os_log_type_enabled(qword_100011E90, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v58 = v13;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      v15 = objc_opt_new();
      v16 = [v13 title];
      [v15 setTitle:v16];

      v17 = [v13 author];
      [v15 setAuthor:v17];

      [v15 setType:{objc_msgSend(v13, "type")}];
      if ([v13 type])
      {
        v18 = [v13 type] == 1;
      }

      else
      {
        v18 = 1;
      }

      [v15 setHasChapters:v18];
      v19 = [v13 path];
      [v15 setPath:v19];

      if ([(CRKFetchBooksRequest *)self->mRequest includeImages])
      {
        v20 = [v13 path];
        v21 = [v20 stringByAppendingPathComponent:@"iTunesArtwork"];
        v22 = [NSData dataWithContentsOfFile:v21];
        [v15 setImage:v22];
      }

      v23 = [v13 storeIdentifier];
      v24 = [v23 length];

      if (v24)
      {
        break;
      }

      v26 = [v13 identifier];
      v27 = [v26 length];

      if (v27)
      {
        v25 = [v13 identifier];
        [NSString stringWithFormat:@"ibooks://assetid/%@", v25];
        goto LABEL_24;
      }

      v41 = [v13 legacyUniqueIdentifier];
      v42 = [v41 length];

      if (v42)
      {
        v25 = [v13 legacyUniqueIdentifier];
        v28 = [NSString stringWithFormat:@"ibooks://assetid/%@", v25];
        goto LABEL_25;
      }

      v25 = [v13 path];
      v28 = [v25 lastPathComponent];
      v43 = [NSString stringWithFormat:@"ibooks://filename/%@", v28];
      v29 = [NSURL URLWithString:v43];

LABEL_26:
      [v15 setWebURL:v29];
      [(NSMutableArray *)self->mBooks addObject:v15];
      v30 = [v15 title];
      if (!v30)
      {
        goto LABEL_32;
      }

      v31 = v30;
      v32 = [v15 author];
      if (!v32)
      {

LABEL_32:
        if ([v13 type] && objc_msgSend(v13, "type") != 1)
        {
          v38 = [CBSParsePDFMetadataOperation alloc];
          v39 = [v13 path];
          v31 = [(CBSParsePDFMetadataOperation *)v38 initWithPDFBook:v15 filePath:v39 parseImage:[(CRKFetchBooksRequest *)self->mRequest includeImages]];

          v35 = v31;
          v36 = self;
          v37 = "parsePDFMetadataOperationDidFail:";
        }

        else
        {
          v35 = [[CBSParseBookMetadataOperation alloc] initWithBook:v15 parseImage:[(CRKFetchBooksRequest *)self->mRequest includeImages]];
          v31 = v35;
          v36 = self;
          v37 = "parseBookMetadataOperationDidFail:";
        }

        [(CBSParseBookMetadataOperation *)v35 addTarget:v36 selector:v37 forOperationEvents:4];
        v40 = +[CATOperationQueue crk_backgroundQueue];
        [v40 addOperation:v31];

        if (!v11)
        {
          v51[0] = _NSConcreteStackBlock;
          v51[1] = 3221225472;
          v51[2] = sub_10000271C;
          v51[3] = &unk_10000C320;
          v51[4] = self;
          v11 = [NSBlockOperation blockOperationWithBlock:v51];
        }

        [v11 addDependency:v31];
LABEL_40:

        goto LABEL_41;
      }

      v33 = v32;
      if (![(CRKFetchBooksRequest *)self->mRequest includeImages])
      {

        goto LABEL_40;
      }

      v34 = [v15 image];

      if (!v34)
      {
        goto LABEL_32;
      }

LABEL_41:

      if (v50 == ++v12)
      {
        v44 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
        v50 = v44;
        if (!v44)
        {

          v6 = v47;
          if (v11)
          {
            v45 = +[CATOperationQueue crk_backgroundQueue];
            [v45 addOperation:v11];

            goto LABEL_53;
          }

LABEL_52:
          [(CBSFetchBooksOperation *)self finishOperation];
          goto LABEL_53;
        }

        goto LABEL_8;
      }
    }

    v25 = [v13 storeIdentifier];
    [NSString stringWithFormat:@"ibooks://storeid/%@", v25];
    v28 = LABEL_24:;
LABEL_25:
    v29 = [NSURL URLWithString:v28];
    goto LABEL_26;
  }

  if (!v5)
  {
    v7 = CRKErrorWithCodeAndUserInfo();
    goto LABEL_50;
  }

  [(CBSFetchBooksOperation *)self endOperationWithError:v5];
LABEL_53:
}

- (void)finishOperation
{
  mSandboxExtension = self->mSandboxExtension;
  self->mSandboxExtension = 0;

  v4 = objc_opt_new();
  [v4 setBooks:self->mBooks];
  [(CBSFetchBooksOperation *)self endOperationWithResultObject:v4];
}

- (void)parseBookMetadataOperationDidFail:(id)a3
{
  mBooks = self->mBooks;
  v4 = [a3 book];
  [(NSMutableArray *)mBooks removeObject:v4];
}

- (void)parsePDFMetadataOperationDidFail:(id)a3
{
  mBooks = self->mBooks;
  v4 = [a3 book];
  [(NSMutableArray *)mBooks removeObject:v4];
}

@end