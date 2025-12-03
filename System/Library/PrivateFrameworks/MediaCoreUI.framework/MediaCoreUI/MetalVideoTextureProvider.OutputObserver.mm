@interface MetalVideoTextureProvider.OutputObserver
- (void)outputMediaDataWillChange:(id)change;
@end

@implementation MetalVideoTextureProvider.OutputObserver

- (void)outputMediaDataWillChange:(id)change
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1C5BCB214();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_1C5BCB1E4();
    changeCopy = change;
    selfCopy = self;
    v13 = changeCopy;
    v14 = selfCopy;
    v15 = sub_1C5BCB1D4();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v14;
    v16[5] = v9;
    sub_1C5AD0FB8(0, 0, v7, &unk_1C5BD8A38, v16);
  }
}

@end