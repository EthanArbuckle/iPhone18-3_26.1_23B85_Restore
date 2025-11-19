@interface _HDDataProvenanceKey
- (BOOL)isEqual:(id)a3;
@end

@implementation _HDDataProvenanceKey

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  dataProvenance = self->_dataProvenance;
  v6 = v4[2];
  if (dataProvenance != v6 && (!v6 || ![(HDDataOriginProvenance *)dataProvenance isEqual:?]))
  {
    goto LABEL_11;
  }

  localProductType = self->_localProductType;
  v8 = v4[3];
  if (localProductType != v8 && (!v8 || ![(NSString *)localProductType isEqualToString:?]))
  {
    goto LABEL_11;
  }

  localSystemBuild = self->_localSystemBuild;
  v10 = v4[4];
  if (localSystemBuild == v10)
  {
    v11 = 1;
    goto LABEL_12;
  }

  if (v10)
  {
    v11 = [(NSString *)localSystemBuild isEqualToString:?];
  }

  else
  {
LABEL_11:
    v11 = 0;
  }

LABEL_12:

  return v11;
}

@end