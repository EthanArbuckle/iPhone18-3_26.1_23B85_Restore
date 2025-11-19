@interface ULPhotoFeaturesMO
+ (id)createFromDO:(const void *)a3 withScanningEventMO:(id)a4 inManagedObjectContext:(id)a5;
- (optional<ULPhotoFeaturesDO>)convertToDO;
@end

@implementation ULPhotoFeaturesMO

+ (id)createFromDO:(const void *)a3 withScanningEventMO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [[ULPhotoFeaturesMO alloc] initWithContext:v8];
  [(ULPhotoFeaturesMO *)v9 setScanningEvent:v7];
  v10 = MEMORY[0x277CBEA90];
  v11 = [MEMORY[0x277CBEA60] fromFloatVector:a3];
  v12 = [v10 fromNSArray:v11];
  [(ULPhotoFeaturesMO *)v9 setFeatures:v12];

  [(ULPhotoFeaturesMO *)v9 setTimestamp:*(a3 + 3)];

  return v9;
}

- (optional<ULPhotoFeaturesDO>)convertToDO
{
  v4 = MEMORY[0x277CBEA60];
  v5 = [(ULPhotoFeaturesMO *)self features];
  v6 = [v5 toNSArrayWithElementType:objc_opt_class()];
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