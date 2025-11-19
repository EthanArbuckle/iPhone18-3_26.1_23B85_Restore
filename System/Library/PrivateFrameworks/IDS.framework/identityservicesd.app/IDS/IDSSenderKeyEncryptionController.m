@interface IDSSenderKeyEncryptionController
- (IDSSenderKeyEncryptionController)init;
- (IDSSenderKeyEncryptionController)initWithPersistenceManager:(id)a3;
- (id)paddyDecryptData:(id)a3 keyIndex:(unsigned int)a4 keyIDByte:(id)a5 from:(id)a6 to:(id)a7;
- (id)paddyEncryptData:(id)a3 to:(id)a4 from:(id)a5;
@end

@implementation IDSSenderKeyEncryptionController

- (IDSSenderKeyEncryptionController)initWithPersistenceManager:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = a3;
  sub_1007C9A6C(11);
  *(&self->super.isa + OBJC_IVAR___IDSSenderKeyEncryptionController_persistenceManager) = v6;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(IDSSenderKeyEncryptionController *)&v8 init];
}

- (id)paddyEncryptData:(id)a3 to:(id)a4 from:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_100935EA8();
  v14 = v13;

  v15 = sub_100818EB4(v12, v14, v9, v10);
  sub_1007156D8(v12, v14);

  return v15;
}

- (id)paddyDecryptData:(id)a3 keyIndex:(unsigned int)a4 keyIDByte:(id)a5 from:(id)a6 to:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = self;
  v17 = sub_100935EA8();
  v19 = v18;

  v20 = sub_100935EA8();
  v22 = v21;

  v23 = sub_10081A2D8(v17, v19, a4, v20, v22, v14, v15);
  sub_1007156D8(v20, v22);
  sub_1007156D8(v17, v19);

  return v23;
}

- (IDSSenderKeyEncryptionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end