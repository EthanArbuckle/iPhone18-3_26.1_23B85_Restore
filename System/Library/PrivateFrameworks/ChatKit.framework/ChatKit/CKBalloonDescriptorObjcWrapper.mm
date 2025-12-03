@interface CKBalloonDescriptorObjcWrapper
+ (BOOL)needsBubbleMaterialForDescriptor:(CKBalloonDescriptor_t *)descriptor traitCollection:(id)collection;
- (CKBalloonDescriptorObjcWrapper)init;
@end

@implementation CKBalloonDescriptorObjcWrapper

+ (BOOL)needsBubbleMaterialForDescriptor:(CKBalloonDescriptor_t *)descriptor traitCollection:(id)collection
{
  var4 = descriptor->var4;
  var5 = descriptor->var5;
  var6 = descriptor->var6;
  var9 = descriptor->var9;
  var12 = descriptor->var12;
  var13 = descriptor->var13;
  var14 = descriptor->var14;
  var15 = descriptor->var15;
  var16 = descriptor->var16;
  v22 = *&descriptor->var0;
  v23 = var4;
  v24 = var5;
  v25 = var6;
  v14 = *&descriptor->var7.blue;
  v26 = *&descriptor->var7.red;
  v27 = v14;
  v15 = *&descriptor->var8.blue;
  v28 = *&descriptor->var8.red;
  v29 = v15;
  v30 = var9;
  v31 = *&descriptor->var10;
  v32 = var12;
  v33 = var13;
  v34 = var14;
  v35 = var15;
  v36 = var16;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58BA8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v22 - v17;
  collectionCopy = collection;
  sub_190D16014(collectionCopy, v18);

  v20 = sub_190D56BB0();
  LOBYTE(collectionCopy) = (*(*(v20 - 8) + 48))(v18, 1, v20) != 1;
  sub_190249580(v18);
  return collectionCopy;
}

- (CKBalloonDescriptorObjcWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKBalloonDescriptorObjcWrapper();
  return [(CKBalloonDescriptorObjcWrapper *)&v3 init];
}

@end