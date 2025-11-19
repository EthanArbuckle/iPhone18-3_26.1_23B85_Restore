@interface KVEmbeddedProfileReader
- (BOOL)enumerateDatasetsWithError:(id *)a3 usingBlock:(id)a4;
- (KVEmbeddedProfileReader)initWithData:(id)a3 profile:(const Profile *)a4 profileInfo:(id)a5;
- (NSString)description;
@end

@implementation KVEmbeddedProfileReader

- (NSString)description
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"profile format: %@ info: %@", v2, v3, v4, @"Binary Embedded", self->_profileInfo);

  return v5;
}

- (BOOL)enumerateDatasetsWithError:(id *)a3 usingBlock:(id)a4
{
  v6 = a4;
  profile = self->_profile;
  v8 = &profile[-*profile->var0];
  if (*v8->var0 >= 7u && (v9 = *v8[6].var0) != 0 && (v10 = *profile[v9].var0, v11 = *profile[v9 + v10].var0, v11))
  {
    v12 = 4 * v11;
    v13 = &profile[v10 + 4 + v9];
    while (1)
    {
      v14 = *v13->var0;
      v15 = [KVEmbeddedDatasetReader alloc];
      v18 = objc_msgSend_initWithData_dataset_error_(v15, v16, self->_data, &v13[v14], a3, v17);
      if (!v18 || (v6[2](v6, v18) & 1) == 0)
      {
        break;
      }

      v13 += 4;
      v12 -= 4;
      if (!v12)
      {
        goto LABEL_8;
      }
    }

    v19 = 0;
  }

  else
  {
LABEL_8:
    v19 = 1;
  }

  return v19;
}

- (KVEmbeddedProfileReader)initWithData:(id)a3 profile:(const Profile *)a4 profileInfo:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = KVEmbeddedProfileReader;
  v11 = [(KVEmbeddedProfileReader *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_data, a3);
    v12->_profile = a4;
    objc_storeStrong(&v12->_profileInfo, a5);
  }

  return v12;
}

@end