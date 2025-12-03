@interface HMDLegacyModel
+ (id)createWithLegacyRecord:(id)record modelContainer:(id)container error:(id *)error;
- (id)encodeWithExistingRecord:(id)record cloudZone:(id)zone modelContainer:(id)container error:(id *)error;
@end

@implementation HMDLegacyModel

+ (id)createWithLegacyRecord:(id)record modelContainer:(id)container error:(id *)error
{
  recordCopy = record;
  containerCopy = container;
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v11 = MEMORY[0x277CCACA8];
  v12 = NSStringFromSelector(a2);
  v13 = [v11 stringWithFormat:@"You must override %@ in a subclass", v12];
  v14 = [v9 exceptionWithName:v10 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (id)encodeWithExistingRecord:(id)record cloudZone:(id)zone modelContainer:(id)container error:(id *)error
{
  recordCopy = record;
  zoneCopy = zone;
  containerCopy = container;
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