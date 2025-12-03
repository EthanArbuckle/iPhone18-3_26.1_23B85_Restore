@interface ULPhotoFeaturesMO
+ (id)createFromDO:(const void *)o withScanningEventMO:(id)mO inManagedObjectContext:(id)context;
- (optional<ULPhotoFeaturesDO>)convertToDO;
@end

@implementation ULPhotoFeaturesMO

+ (id)createFromDO:(const void *)o withScanningEventMO:(id)mO inManagedObjectContext:(id)context
{
  mOCopy = mO;
  contextCopy = context;
  v9 = [[ULPhotoFeaturesMO alloc] initWithContext:contextCopy];
  [(ULPhotoFeaturesMO *)v9 setScanningEvent:mOCopy];
  v10 = MEMORY[0x277CBEA90];
  v11 = [MEMORY[0x277CBEA60] fromFloatVector:o];
  v12 = [v10 fromNSArray:v11];
  [(ULPhotoFeaturesMO *)v9 setFeatures:v12];

  [(ULPhotoFeaturesMO *)v9 setTimestamp:*(o + 3)];

  return v9;
}

- (optional<ULPhotoFeaturesDO>)convertToDO
{
  v4 = MEMORY[0x277CBEA60];
  features = [(ULPhotoFeaturesMO *)self features];
  v6 = [features toNSArrayWithElementType:objc_opt_class()];
  [v4 toFloatVector:v6];
  [(ULPhotoFeaturesMO *)self timestamp];
  v11 = v7;
  ULPhotoFeaturesDO::ULPhotoFeaturesDO(&v13, __p, &v11);
  *&retstr->var0.var0 = v13;
  v8 = v14;
  v9 = v15;
  v14 = 0;
  v13 = 0uLL;
  retstr->var0.var1.var0.var2 = v8;
  retstr[1].var0.var1.var0.var0 = v9;
  LOBYTE(retstr[1].var0.var1.var0.var1) = 1;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return result;
}

@end