@interface MBBackupOperation
+ (id)nameForType:(int)a3;
- (MBBackupOperation)initWithDecoder:(id)a3;
- (MBBackupOperation)initWithDecoder:(id)a3 domainManager:(id)a4;
- (id)description;
- (void)encode:(id)a3;
@end

@implementation MBBackupOperation

+ (id)nameForType:(int)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return *(&off_1003C1D58 + a3);
  }
}

- (MBBackupOperation)initWithDecoder:(id)a3
{
  [(MBBackupOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (MBBackupOperation)initWithDecoder:(id)a3 domainManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = MBBackupOperation;
  v8 = [(MBBackupOperation *)&v20 init];
  if (v8)
  {
    v9 = [v6 decodeInt8];
    if (v9 >= 5)
    {
      v19 = [[MBException alloc] initWithCode:11 format:{@"Invalid type: %d", v9}];
    }

    else
    {
      v8->_type = v9;
      v8->_flags = [v6 decodeInt8];
      v10 = [v6 decodeString];
      if (v10 && ([v7 domainForName:v10], v11 = objc_claimAutoreleasedReturnValue(), domain = v8->_domain, v8->_domain = v11, domain, !v8->_domain))
      {
        v19 = [[MBException alloc] initWithCode:11 format:{@"Invalid domain name: %@", v10}];
      }

      else
      {
        v13 = [v6 decodeData];
        if (!v13 || (v14 = [[MBFileID alloc] initWithData:v13], fileID = v8->_fileID, v8->_fileID = v14, fileID, v8->_fileID))
        {
          v16 = [v6 decodeString];
          path = v8->_path;
          v8->_path = v16;

          v8->_size = [v6 decodeInt64];
          goto LABEL_8;
        }

        v19 = [[MBException alloc] initWithCode:11 format:{@"Invalid file ID data: %@", v13}];
      }
    }

    objc_exception_throw(v19);
  }

LABEL_8:

  return v8;
}

- (void)encode:(id)a3
{
  type_low = SLOBYTE(self->_type);
  v7 = a3;
  [v7 encodeInt8:type_low];
  [v7 encodeInt8:self->_flags];
  v5 = [(MBDomain *)self->_domain name];
  [v7 encodeString:v5];

  v6 = [(MBFileID *)self->_fileID data];
  [v7 encodeData:v6];

  [v7 encodeString:self->_path];
  [v7 encodeInt64:self->_size];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(MBBackupOperation *)self typeName];
  v5 = [NSString stringWithFormat:@"<%@: type=%@, domain=%@, fileID=%@, path=%@, size=%llu, flags=0x%x>", v3, v4, self->_domain, self->_fileID, self->_path, self->_size, self->_flags];

  return v5;
}

@end