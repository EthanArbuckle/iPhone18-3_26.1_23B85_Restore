@interface HDSourceRevision
- (HDSourceRevision)initWithSource:(id)a3 version:(id)a4 productType:(id)a5 operatingSystemVersion:(id *)a6;
@end

@implementation HDSourceRevision

- (HDSourceRevision)initWithSource:(id)a3 version:(id)a4 productType:(id)a5 operatingSystemVersion:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = HDSourceRevision;
  v14 = [(HDSourceRevision *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sourceEntity, a3);
    objc_storeStrong(&v15->_version, a4);
    objc_storeStrong(&v15->_productType, a5);
    v16 = *&a6->var0;
    v15->_operatingSystemVersion.patchVersion = a6->var2;
    *&v15->_operatingSystemVersion.majorVersion = v16;
  }

  return v15;
}

@end