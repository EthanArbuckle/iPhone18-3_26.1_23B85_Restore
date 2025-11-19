@interface LuceneResultDocument
- (LuceneContextRequest)request;
- (LuceneResultDocument)initWithDocId:(int)a3 withLuceneContextRequest:(id)a4;
- (id)bestTitleWithSeeOtherDocIdRelative:(int *)a3;
- (id)getDocument;
- (id)titleField;
@end

@implementation LuceneResultDocument

- (LuceneResultDocument)initWithDocId:(int)a3 withLuceneContextRequest:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = LuceneResultDocument;
  v7 = [(LuceneResultDocument *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_docId = a3;
    objc_storeWeak(&v7->_request, v6);
  }

  return v8;
}

- (id)getDocument
{
  p_doc = &self->_doc;
  doc = self->_doc;
  if (doc)
  {
    v4 = doc;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_request);
    v7 = [WeakRetained docVisitor];

    v4 = [v7 getDocument];
    [(OrgApacheLuceneDocumentDocument *)v4 removeAllFields];
    v8 = objc_loadWeakRetained(&self->_request);
    v9 = [v8 engine];
    v10 = [v9 reader];
    [v10 documentWithInt:self->_docId withOrgApacheLuceneIndexStoredFieldVisitor:v7];

    objc_storeStrong(p_doc, v4);
  }

  return v4;
}

- (id)titleField
{
  p_title = &self->_title;
  title = self->_title;
  if (title)
  {
    p_isa = title;
    goto LABEL_18;
  }

  v6 = [(LuceneResultDocument *)self getDocument];
  p_isa = [v6 getWithNSString:@"title"];

  if (![(NSString *)p_isa length])
  {
    goto LABEL_15;
  }

  if ([(NSString *)p_isa characterAtIndex:0]== 7)
  {
    v7 = [(NSString *)p_isa indexOf:10];
    if ((v7 & 0x80000000) == 0)
    {
      v8 = v7;
      self->_titleHasControlCharacter = 1;
      v9 = [(NSString *)p_isa substringWithRange:1, v7];
      v10 = [(NSString *)p_isa substringFromIndex:v8 + 1];

      if ([v9 length])
      {
        v11 = [v9 characterAtIndex:0] - 48;
        if (v11 <= 9)
        {
          self->_titleMinTermsRequired = v11;
        }
      }

      if ([v9 length] >= 2)
      {
        v12 = [v9 characterAtIndex:1] - 48;
        if (v12 <= 9)
        {
          self->_minPrimaryTermsRequired = v12;
        }
      }

      p_isa = v9;
      goto LABEL_16;
    }

    if ([(NSString *)p_isa length]== 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_request);
      [WeakRetained setForceNoResults:1];
    }

LABEL_15:
    v10 = &stru_100484358;
LABEL_16:

    p_isa = &v10->isa;
  }

  objc_storeStrong(p_title, p_isa);
LABEL_18:

  return p_isa;
}

- (id)bestTitleWithSeeOtherDocIdRelative:(int *)a3
{
  v39 = [(LuceneResultDocument *)self titleField];
  v5 = v39;
  if (([v39 indexOf:10] & 0x80000000) == 0)
  {
    v87 = 0;
    v88 = &v87;
    v89 = 0x3032000000;
    v90 = sub_1002AA110;
    v91 = sub_1002AA120;
    v92 = objc_opt_new();
    v86[0] = 0;
    v86[1] = v86;
    v86[2] = 0x2020000000;
    v86[3] = 0;
    v84[0] = 0;
    v84[1] = v84;
    v84[2] = 0x3032000000;
    v84[3] = sub_1002AA110;
    v84[4] = sub_1002AA120;
    v85 = 0;
    v82[0] = 0;
    v82[1] = v82;
    v82[2] = 0x3032000000;
    v82[3] = sub_1002AA110;
    v82[4] = sub_1002AA120;
    v83 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_request);
    v7 = [WeakRetained simplifiedDesiredLanguageTags];

    if ([v7 count])
    {
      v8 = [v7 firstObject];
    }

    else
    {
      v8 = @"en";
    }

    v10 = [v7 count] > 1;
    v11 = objc_loadWeakRetained(&self->_request);
    v12 = [v11 response];
    v38 = [v12 languageTag];

    v13 = [LanguageUtilities simplifyLanguageTag:v38];
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v77 = 0;
    v68 = 0;
    v69 = &v68;
    v70 = 0x3032000000;
    v71 = sub_1002AA110;
    v72 = sub_1002AA120;
    v73 = 0;
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    v14 = [(LuceneResultDocument *)self request];
    v15 = [v14 charBuffer];

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1002AA128;
    v48[3] = &unk_100483EE0;
    v53 = v82;
    v54 = &v74;
    v55 = &v64;
    v61 = v15;
    v36 = v8;
    v49 = v36;
    v37 = v13;
    v50 = v37;
    v63 = v10;
    v56 = &v68;
    v57 = &v78;
    v35 = v7;
    v51 = v35;
    v52 = self;
    v58 = v84;
    v59 = v86;
    v62 = a3;
    v60 = &v87;
    [v39 enumerateLinesUsingBlock:v48];
    if (a3)
    {
      *a3 = *(v79 + 6);
    }

    if (*(v65 + 24) == 1 && *(v75 + 24) != 1)
    {
      v9 = 0;
      goto LABEL_35;
    }

    if ([v69[5] length])
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v16 = v88[5];
      v17 = [v16 countByEnumeratingWithState:&v44 objects:v98 count:16];
      if (v17)
      {
        v18 = *v45;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v45 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v44 + 1) + 8 * i);
            v21 = [v20 title];
            v22 = [LanguageUtilities transliterateTextToLanguageScript:v21 withSimplifiedLanguage:v69[5]];
            [v20 setTitle:v22];
          }

          v17 = [v16 countByEnumeratingWithState:&v44 objects:v98 count:16];
        }

        while (v17);
      }
    }

    [v88[5] sortUsingComparator:&stru_100483F20];
    v23 = objc_loadWeakRetained(&self->_request);
    if ([v23 debug])
    {
      v24 = objc_loadWeakRetained(&self->_request);
      v25 = [v24 debugLogEnabled];

      if (!v25)
      {
LABEL_33:
        v9 = [v88[5] firstObject];
LABEL_35:

        _Block_object_dispose(&v64, 8);
        _Block_object_dispose(&v68, 8);

        _Block_object_dispose(&v74, 8);
        _Block_object_dispose(&v78, 8);

        _Block_object_dispose(v82, 8);
        _Block_object_dispose(v84, 8);

        _Block_object_dispose(v86, 8);
        _Block_object_dispose(&v87, 8);

        goto LABEL_36;
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v23 = v88[5];
      v26 = [v23 countByEnumeratingWithState:&v40 objects:v97 count:16];
      if (v26)
      {
        v27 = 0;
        v28 = *v41;
        do
        {
          for (j = 0; j != v26; j = j + 1)
          {
            if (*v41 != v28)
            {
              objc_enumerationMutation(v23);
            }

            v30 = *(*(&v40 + 1) + 8 * j);
            v31 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              v32 = [v30 debugDescription];
              ++v27;
              *buf = 67109378;
              v94 = v27;
              v95 = 2112;
              v96 = v32;
              _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Ranked title candidate #%i: %@", buf, 0x12u);
            }
          }

          v26 = [v23 countByEnumeratingWithState:&v40 objects:v97 count:16];
        }

        while (v26);
      }
    }

    goto LABEL_33;
  }

  if (![v39 length] || objc_msgSend(v39, "characterAtIndex:", 0) == 92)
  {
    v9 = 0;
    goto LABEL_37;
  }

  v34 = objc_loadWeakRetained(&self->_request);
  v9 = [v34 inspectTitle:v39 titleForTokenization:0 conditionals:0];

LABEL_36:
  v5 = v39;
LABEL_37:

  return v9;
}

- (LuceneContextRequest)request
{
  WeakRetained = objc_loadWeakRetained(&self->_request);

  return WeakRetained;
}

@end