@interface ULKeychainMock
+ (id)retrieveSymmetricKey:(id)a3;
@end

@implementation ULKeychainMock

+ (id)retrieveSymmetricKey:(id)a3
{
  v3 = sub_259212840();
  static ULKeychainMock.retrieveSymmetricKey(_:)(v3, v4, v14);

  v5 = v15;
  if (v15)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    v9 = MEMORY[0x28223BE20](v6);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v11, v9);
    v12 = sub_259212BF0();
    (*(v7 + 8))(v11, v5);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end