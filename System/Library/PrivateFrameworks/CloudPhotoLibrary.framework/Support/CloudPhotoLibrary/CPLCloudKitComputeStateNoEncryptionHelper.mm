@interface CPLCloudKitComputeStateNoEncryptionHelper
- (BOOL)decryptFileAtURL:(id)l outputFileURL:(id)rL error:(id *)error;
- (BOOL)encryptFileAtURL:(id)l outputFileURL:(id)rL error:(id *)error;
- (CPLCloudKitComputeStateNoEncryptionHelper)initWithPrefix:(id)prefix;
@end

@implementation CPLCloudKitComputeStateNoEncryptionHelper

- (CPLCloudKitComputeStateNoEncryptionHelper)initWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  v12.receiver = self;
  v12.super_class = CPLCloudKitComputeStateNoEncryptionHelper;
  v6 = [(CPLCloudKitComputeStateNoEncryptionHelper *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSFileManager);
    fm = v6->_fm;
    v6->_fm = v7;

    v9 = [prefixCopy dataUsingEncoding:4];
    prefix = v6->_prefix;
    v6->_prefix = v9;

    if (!v6->_prefix)
    {
      sub_100198A18(a2, v6);
    }
  }

  return v6;
}

- (BOOL)encryptFileAtURL:(id)l outputFileURL:(id)rL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  if ([(NSData *)self->_prefix length])
  {
    v18 = 0;
    v10 = [[NSMutableData alloc] initWithContentsOfURL:lCopy options:0 error:&v18];
    v11 = v18;
    if (v10)
    {
      v12 = objc_autoreleasePoolPush();
      [v10 replaceBytesInRange:0 withBytes:0 length:{-[NSData bytes](self->_prefix, "bytes"), -[NSData length](self->_prefix, "length")}];
      v17 = v11;
      v13 = [v10 writeToURL:rLCopy options:1 error:&v17];
      v14 = v17;

      objc_autoreleasePoolPop(v12);
      v11 = v14;
      if (!error)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13 = 0;
      if (!error)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    if ((v13 & 1) == 0)
    {
      v15 = v11;
      *error = v11;
    }

    goto LABEL_9;
  }

  v13 = [(NSFileManager *)self->_fm cplCopyItemAtURL:lCopy toURL:rLCopy error:error];
LABEL_10:

  return v13;
}

- (BOOL)decryptFileAtURL:(id)l outputFileURL:(id)rL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  if ([(NSData *)self->_prefix length])
  {
    v24 = 0;
    v10 = [[NSData alloc] initWithContentsOfURL:lCopy options:0 error:&v24];
    v11 = v24;
    if (v10)
    {
      v12 = [v10 length];
      if (v12 >= [(NSData *)self->_prefix length])
      {
        v17 = objc_autoreleasePoolPush();
        if ([v10 rangeOfData:self->_prefix options:2 range:{0, -[NSData length](self->_prefix, "length")}])
        {
          v18 = [NSError alloc];
          v27 = NSLocalizedRecoverySuggestionErrorKey;
          v28 = @"Invalid pseudo-encryption prefix";
          v19 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          v20 = [v18 initWithDomain:@"CPLComputeStateEncryptionError" code:3 userInfo:v19];
          v16 = 0;
        }

        else
        {
          v19 = [v10 subdataWithRange:{-[NSData length](self->_prefix, "length"), objc_msgSend(v10, "length") - -[NSData length](self->_prefix, "length")}];
          v23 = v11;
          v16 = [v19 writeToURL:rLCopy options:1 error:&v23];
          v20 = v23;
        }

        objc_autoreleasePoolPop(v17);
        v11 = v20;
        if (!error)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v13 = [NSError alloc];
        v25 = NSLocalizedRecoverySuggestionErrorKey;
        v26 = @"File is too short";
        v14 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v15 = [v13 initWithDomain:@"CPLComputeStateEncryptionError" code:3 userInfo:v14];

        v16 = 0;
        v11 = v15;
        if (!error)
        {
LABEL_15:

          goto LABEL_16;
        }
      }
    }

    else
    {
      v16 = 0;
      if (!error)
      {
        goto LABEL_15;
      }
    }

    if ((v16 & 1) == 0)
    {
      v21 = v11;
      *error = v11;
    }

    goto LABEL_15;
  }

  v16 = [(NSFileManager *)self->_fm cplCopyItemAtURL:lCopy toURL:rLCopy error:error];
LABEL_16:

  return v16;
}

@end