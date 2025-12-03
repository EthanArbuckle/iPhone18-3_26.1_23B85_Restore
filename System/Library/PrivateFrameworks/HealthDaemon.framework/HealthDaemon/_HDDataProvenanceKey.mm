@interface _HDDataProvenanceKey
- (BOOL)isEqual:(id)equal;
@end

@implementation _HDDataProvenanceKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  dataProvenance = self->_dataProvenance;
  v6 = equalCopy[2];
  if (dataProvenance != v6 && (!v6 || ![(HDDataOriginProvenance *)dataProvenance isEqual:?]))
  {
    goto LABEL_11;
  }

  localProductType = self->_localProductType;
  v8 = equalCopy[3];
  if (localProductType != v8 && (!v8 || ![(NSString *)localProductType isEqualToString:?]))
  {
    goto LABEL_11;
  }

  localSystemBuild = self->_localSystemBuild;
  v10 = equalCopy[4];
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