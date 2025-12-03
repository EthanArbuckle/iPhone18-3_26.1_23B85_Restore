@interface MobileAssetExclaveServicesManager
- (BOOL)checkManifestForFSTag:(unsigned int)tag specifier:(id)specifier state:(unsigned int)state manifest:(id)manifest infoPlist:(id)plist catalog:(id)catalog isValid:(BOOL *)valid error:(id *)self0;
- (BOOL)commitStagedManifestForFSTags:(id)tags specifiers:(id)specifiers error:(id *)error;
- (BOOL)stageManifestForFSTag:(unsigned int)tag specifier:(id)specifier manifest:(id)manifest infoPlist:(id)plist catalog:(id)catalog error:(id *)error;
- (_TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager)init;
- (id)proposeNonce:(id *)nonce;
@end

@implementation MobileAssetExclaveServicesManager

- (id)proposeNonce:(id *)nonce
{
  selfCopy = self;
  sub_259A76CD0();

  v4 = sub_259A81E58();

  return v4;
}

- (BOOL)checkManifestForFSTag:(unsigned int)tag specifier:(id)specifier state:(unsigned int)state manifest:(id)manifest infoPlist:(id)plist catalog:(id)catalog isValid:(BOOL *)valid error:(id *)self0
{
  v14 = sub_259A81E78();
  v16 = v15;
  manifestCopy = manifest;
  plistCopy = plist;
  catalogCopy = catalog;
  selfCopy = self;
  v21 = sub_259A81C28();
  v23 = v22;

  v24 = sub_259A81C28();
  v26 = v25;

  v27 = sub_259A81C28();
  v29 = v28;

  sub_259A7789C(tag, v14, v16, state, v21, v23, v24, v26, v27, v29, valid);
  sub_259A7C6A8(v27, v29);
  sub_259A7C6A8(v24, v26);
  sub_259A7C6A8(v21, v23);

  return 1;
}

- (BOOL)stageManifestForFSTag:(unsigned int)tag specifier:(id)specifier manifest:(id)manifest infoPlist:(id)plist catalog:(id)catalog error:(id *)error
{
  v12 = sub_259A81E78();
  v14 = v13;
  manifestCopy = manifest;
  plistCopy = plist;
  catalogCopy = catalog;
  selfCopy = self;
  v19 = sub_259A81C28();
  v21 = v20;

  v22 = sub_259A81C28();
  v24 = v23;

  v25 = sub_259A81C28();
  v27 = v26;

  sub_259A78EC8(tag, v12, v14, v19, v21, v22, v24, v25, v27);
  sub_259A7C6A8(v25, v27);
  sub_259A7C6A8(v22, v24);
  sub_259A7C6A8(v19, v21);

  return 1;
}

- (BOOL)commitStagedManifestForFSTags:(id)tags specifiers:(id)specifiers error:(id *)error
{
  sub_259A7C764();
  v6 = sub_259A81F18();
  v7 = sub_259A81F18();
  selfCopy = self;
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