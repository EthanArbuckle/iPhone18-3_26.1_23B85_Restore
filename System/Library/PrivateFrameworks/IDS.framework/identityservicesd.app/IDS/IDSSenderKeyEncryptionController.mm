@interface IDSSenderKeyEncryptionController
- (IDSSenderKeyEncryptionController)init;
- (IDSSenderKeyEncryptionController)initWithPersistenceManager:(id)manager;
- (id)paddyDecryptData:(id)data keyIndex:(unsigned int)index keyIDByte:(id)byte from:(id)from to:(id)to;
- (id)paddyEncryptData:(id)data to:(id)to from:(id)from;
@end

@implementation IDSSenderKeyEncryptionController

- (IDSSenderKeyEncryptionController)initWithPersistenceManager:(id)manager
{
  ObjectType = swift_getObjectType();
  managerCopy = manager;
  sub_1007C9A6C(11);
  *(&self->super.isa + OBJC_IVAR___IDSSenderKeyEncryptionController_persistenceManager) = managerCopy;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(IDSSenderKeyEncryptionController *)&v8 init];
}

- (id)paddyEncryptData:(id)data to:(id)to from:(id)from
{
  dataCopy = data;
  toCopy = to;
  fromCopy = from;
  selfCopy = self;
  v12 = sub_100935EA8();
  v14 = v13;

  v15 = sub_100818EB4(v12, v14, toCopy, fromCopy);
  sub_1007156D8(v12, v14);

  return v15;
}

- (id)paddyDecryptData:(id)data keyIndex:(unsigned int)index keyIDByte:(id)byte from:(id)from to:(id)to
{
  dataCopy = data;
  byteCopy = byte;
  fromCopy = from;
  toCopy = to;
  selfCopy = self;
  v17 = sub_100935EA8();
  v19 = v18;

  v20 = sub_100935EA8();
  v22 = v21;

  v23 = sub_10081A2D8(v17, v19, index, v20, v22, fromCopy, toCopy);
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