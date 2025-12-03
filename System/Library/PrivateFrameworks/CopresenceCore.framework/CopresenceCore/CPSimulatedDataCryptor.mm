@interface CPSimulatedDataCryptor
- (CPSimulatedDataCryptor)init;
- (CPSimulatedDataCryptor)initWithCoder:(id)coder;
- (NSArray)decryptionKeyIDSet;
- (NSUUID)encryptionKeyID;
- (id)decryptData:(id)data keyID:(id)d seqNum:(unint64_t)num error:(id *)error;
- (id)encryptData:(id)data seqNum:(unint64_t)num error:(id *)error;
- (void)setDecryptionKeyIDSet:(id)set;
- (void)setEncryptionKeyID:(id)d;
@end

@implementation CPSimulatedDataCryptor

- (NSUUID)encryptionKeyID
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___CPSimulatedDataCryptor_encryptionKeyID;
  swift_beginAccess();
  (*(v4 + 16))(v7, self + v8, v3);
  v9.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v9.super.isa;
}

- (void)setEncryptionKeyID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = OBJC_IVAR___CPSimulatedDataCryptor_encryptionKeyID;
  swift_beginAccess();
  v10 = *(v5 + 40);
  selfCopy = self;
  v10(self + v9, v8, v4);
  swift_endAccess();
}

- (NSArray)decryptionKeyIDSet
{
  v3 = OBJC_IVAR___CPSimulatedDataCryptor_decryptionKeyIDSet;
  swift_beginAccess();
  v4 = *(self + v3);
  type metadata accessor for UUID();

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)setDecryptionKeyIDSet:(id)set
{
  type metadata accessor for UUID();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___CPSimulatedDataCryptor_decryptionKeyIDSet;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (id)encryptData:(id)data seqNum:(unint64_t)num error:(id *)error
{
  if (data)
  {
    dataCopy = data;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v6, v8);

    return v9.super.isa;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (id)decryptData:(id)data keyID:(id)d seqNum:(unint64_t)num error:(id *)error
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - v10;
  if (data)
  {
    dCopy = d;
    dataCopy = data;
    data = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (d)
    {
LABEL_3:
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
      goto LABEL_6;
    }
  }

  else
  {
    dCopy2 = d;
    v15 = 0xF000000000000000;
    if (d)
    {
      goto LABEL_3;
    }
  }

  v19 = type metadata accessor for UUID();
  result = (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
LABEL_6:
  if (v15 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    outlined destroy of UUID?(v11);
    v20.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(data, v15);

    return v20.super.isa;
  }

  return result;
}

- (CPSimulatedDataCryptor)init
{
  UUID.init()();
  v3 = OBJC_IVAR___CPSimulatedDataCryptor_decryptionKeyIDSet;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AEE07B20;
  UUID.init()();
  *(self + v3) = v7;
  v9.receiver = self;
  v9.super_class = type metadata accessor for SimulatedDataCryptor();
  return [(CPSimulatedDataCryptor *)&v9 init];
}

- (CPSimulatedDataCryptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  UUID.init()();
  v5 = OBJC_IVAR___CPSimulatedDataCryptor_decryptionKeyIDSet;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AEE07B20;
  UUID.init()();
  *(self + v5) = v9;
  v12.receiver = self;
  v12.super_class = type metadata accessor for SimulatedDataCryptor();
  v10 = [(CPSimulatedDataCryptor *)&v12 init];

  return v10;
}

@end