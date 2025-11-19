@interface MobileAssetExclaveServicesManager
- (BOOL)checkManifestForFSTag:(unsigned int)a3 specifier:(id)a4 state:(unsigned int)a5 manifest:(id)a6 infoPlist:(id)a7 catalog:(id)a8 isValid:(BOOL *)a9 error:(id *)a10;
- (BOOL)commitStagedManifestForFSTags:(id)a3 specifiers:(id)a4 error:(id *)a5;
- (BOOL)stageManifestForFSTag:(unsigned int)a3 specifier:(id)a4 manifest:(id)a5 infoPlist:(id)a6 catalog:(id)a7 error:(id *)a8;
- (_TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager)init;
- (id)proposeNonce:(id *)a3;
@end

@implementation MobileAssetExclaveServicesManager

- (id)proposeNonce:(id *)a3
{
  v3 = self;
  sub_259A76CD0();

  v4 = sub_259A81E58();

  return v4;
}

- (BOOL)checkManifestForFSTag:(unsigned int)a3 specifier:(id)a4 state:(unsigned int)a5 manifest:(id)a6 infoPlist:(id)a7 catalog:(id)a8 isValid:(BOOL *)a9 error:(id *)a10
{
  v14 = sub_259A81E78();
  v16 = v15;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = self;
  v21 = sub_259A81C28();
  v23 = v22;

  v24 = sub_259A81C28();
  v26 = v25;

  v27 = sub_259A81C28();
  v29 = v28;

  sub_259A7789C(a3, v14, v16, a5, v21, v23, v24, v26, v27, v29, a9);
  sub_259A7C6A8(v27, v29);
  sub_259A7C6A8(v24, v26);
  sub_259A7C6A8(v21, v23);

  return 1;
}

- (BOOL)stageManifestForFSTag:(unsigned int)a3 specifier:(id)a4 manifest:(id)a5 infoPlist:(id)a6 catalog:(id)a7 error:(id *)a8
{
  v12 = sub_259A81E78();
  v14 = v13;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = self;
  v19 = sub_259A81C28();
  v21 = v20;

  v22 = sub_259A81C28();
  v24 = v23;

  v25 = sub_259A81C28();
  v27 = v26;

  sub_259A78EC8(a3, v12, v14, v19, v21, v22, v24, v25, v27);
  sub_259A7C6A8(v25, v27);
  sub_259A7C6A8(v22, v24);
  sub_259A7C6A8(v19, v21);

  return 1;
}

- (BOOL)commitStagedManifestForFSTags:(id)a3 specifiers:(id)a4 error:(id *)a5
{
  sub_259A7C764();
  v6 = sub_259A81F18();
  v7 = sub_259A81F18();
  v8 = self;
  sub_259A797D0(v6, v7);

  return 1;
}

- (_TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end