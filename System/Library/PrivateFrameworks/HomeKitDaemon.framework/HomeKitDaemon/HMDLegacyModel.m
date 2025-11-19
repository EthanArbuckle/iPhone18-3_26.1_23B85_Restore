@interface HMDLegacyModel
+ (id)createWithLegacyRecord:(id)a3 modelContainer:(id)a4 error:(id *)a5;
- (id)encodeWithExistingRecord:(id)a3 cloudZone:(id)a4 modelContainer:(id)a5 error:(id *)a6;
@end

@implementation HMDLegacyModel

+ (id)createWithLegacyRecord:(id)a3 modelContainer:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v11 = MEMORY[0x277CCACA8];
  v12 = NSStringFromSelector(a2);
  v13 = [v11 stringWithFormat:@"You must override %@ in a subclass", v12];
  v14 = [v9 exceptionWithName:v10 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (id)encodeWithExistingRecord:(id)a3 cloudZone:(id)a4 modelContainer:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v14 = MEMORY[0x277CCACA8];
  v15 = NSStringFromSelector(a2);
  v16 = [v14 stringWithFormat:@"You must override %@ in a subclass", v15];
  v17 = [v12 exceptionWithName:v13 reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

@end