@interface LACLocalization
+ (id)dtoErrorBiometryNotEnrolled;
+ (id)dtoErrorDeviceTypeNotSupported;
+ (id)dtoErrorPasscodeNotSet;
+ (id)dtoSecurityDelayEndedText:(id)a3 duration:(double)a4;
+ (id)errorAuthenticationCanceled;
+ (id)errorAuthenticationFailure;
+ (id)errorBiometryDeniedForApp;
+ (id)errorBiometryDisconnected;
+ (id)errorBiometryLockedOut;
+ (id)errorBiometryNotAvailable;
+ (id)errorBiometryNotEnrolled;
+ (id)errorBiometryNotPaired;
+ (id)errorCompanionNotAvailable;
+ (id)errorDenied;
+ (id)errorInvalidDimensions;
+ (id)errorNoAuthenticationRequired;
+ (id)errorNotFound;
+ (id)errorNotInteractive;
+ (id)errorOperationNotAllowed;
+ (id)errorPasscodeNotSet;
+ (id)errorRecoveryUserNotFound;
+ (id)errorTimeout;
+ (id)localizedStringWithKey:(id)a3 value:(id)a4 table:(id)a5;
+ (id)localizedStringWithKey:(id)a3 value:(id)a4 tableSuffix:(id)a5;
@end

@implementation LACLocalization

+ (id)errorBiometryNotEnrolled
{
  v3 = MEMORY[0x1B27229A0](0xD000000000000015, 0x80000001B0357C40);
  v4 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v4 tableSuffix:v5];

  return v6;
}

+ (id)localizedStringWithKey:(id)a3 value:(id)a4 tableSuffix:(id)a5
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  swift_getObjCClassMetadata();
  v14 = static LACLocalization.localizedString(key:value:tableSuffix:)(v5, v7, v8, v10, v11, v13);
  v16 = v15;

  v17 = MEMORY[0x1B27229A0](v14, v16);

  return v17;
}

+ (id)localizedStringWithKey:(id)a3 value:(id)a4 table:(id)a5
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v11 = static NSBundle.current;
  v19._object = 0xE000000000000000;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13.value._countAndFlagsBits = v8;
  v13.value._object = v10;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v19);

  v16 = MEMORY[0x1B27229A0](v15._countAndFlagsBits, v15._object);

  return v16;
}

+ (id)errorBiometryNotAvailable
{
  v3 = MEMORY[0x1B27229A0](0xD000000000000016, 0x80000001B0357C20);
  v4 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v4 tableSuffix:v5];

  return v6;
}

+ (id)errorPasscodeNotSet
{
  v3 = MEMORY[0x1B27229A0](0xD00000000000001ALL, 0x80000001B0357C80);
  v4 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v4 tableSuffix:v5];

  return v6;
}

+ (id)errorAuthenticationFailure
{
  v3 = MEMORY[0x1B27229A0](0xD000000000000016, 0x80000001B0357BE0);
  v4 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v4 tableSuffix:v5];

  return v6;
}

+ (id)dtoErrorBiometryNotEnrolled
{
  v3 = MEMORY[0x1B27229A0](0xD00000000000001FLL, 0x80000001B0357EB0);
  v4 = MEMORY[0x1B27229A0](0x74656863746152, 0xE700000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v5 tableSuffix:v4];

  return v6;
}

+ (id)errorAuthenticationCanceled
{
  v3 = MEMORY[0x1B27229A0](0xD000000000000017, 0x80000001B0357C00);
  v4 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v4 tableSuffix:v5];

  return v6;
}

+ (id)errorBiometryLockedOut
{
  v3 = MEMORY[0x1B27229A0](0xD000000000000013, 0x80000001B0357C60);
  v4 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v4 tableSuffix:v5];

  return v6;
}

+ (id)errorNotInteractive
{
  v3 = MEMORY[0x1B27229A0](0xD00000000000001ALL, 0x80000001B0357CA0);
  v4 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v4 tableSuffix:v5];

  return v6;
}

+ (id)errorBiometryNotPaired
{
  v3 = MEMORY[0x1B27229A0](0xD00000000000001DLL, 0x80000001B0357CC0);
  v4 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v4 tableSuffix:v5];

  return v6;
}

+ (id)errorBiometryDisconnected
{
  v3 = MEMORY[0x1B27229A0](0xD000000000000020, 0x80000001B0357CE0);
  v4 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v4 tableSuffix:v5];

  return v6;
}

+ (id)errorInvalidDimensions
{
  v3 = MEMORY[0x1B27229A0](0xD00000000000001DLL, 0x80000001B0357D10);
  v4 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v4 tableSuffix:v5];

  return v6;
}

+ (id)errorRecoveryUserNotFound
{
  v3 = MEMORY[0x1B27229A0](0xD000000000000020, 0x80000001B0357D30);
  v4 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v4 tableSuffix:v5];

  return v6;
}

+ (id)errorTimeout
{
  v3 = MEMORY[0x1B27229A0](0xD000000000000013, 0x80000001B0357D60);
  v4 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v4 tableSuffix:v5];

  return v6;
}

+ (id)errorDenied
{
  v3 = MEMORY[0x1B27229A0](0xD000000000000012, 0x80000001B0357D80);
  v4 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v4 tableSuffix:v5];

  return v6;
}

+ (id)errorOperationNotAllowed
{
  v3 = MEMORY[0x1B27229A0](0xD00000000000001FLL, 0x80000001B0357DA0);
  v4 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v4 tableSuffix:v5];

  return v6;
}

+ (id)errorNoAuthenticationRequired
{
  v3 = MEMORY[0x1B27229A0](0xD000000000000024, 0x80000001B0357DC0);
  v4 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v4 tableSuffix:v5];

  return v6;
}

+ (id)errorBiometryDeniedForApp
{
  v3 = MEMORY[0x1B27229A0](0xD000000000000020, 0x80000001B0357DF0);
  v4 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v4 tableSuffix:v5];

  return v6;
}

+ (id)errorNotFound
{
  v3 = MEMORY[0x1B27229A0](0xD000000000000014, 0x80000001B0357E20);
  v4 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v4 tableSuffix:v5];

  return v6;
}

+ (id)errorCompanionNotAvailable
{
  v3 = MEMORY[0x1B27229A0](0xD000000000000021, 0x80000001B0357E40);
  v4 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v4 tableSuffix:v5];

  return v6;
}

+ (id)dtoSecurityDelayEndedText:(id)a3 duration:(double)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  swift_getObjCClassMetadata();
  v8 = static LACLocalization.dtoSecurityDelayEndedText(_:duration:)(v5, v7, a4);
  v10 = v9;

  v11 = MEMORY[0x1B27229A0](v8, v10);

  return v11;
}

+ (id)dtoErrorPasscodeNotSet
{
  v3 = MEMORY[0x1B27229A0](0xD00000000000001ALL, 0x80000001B0357E90);
  v4 = MEMORY[0x1B27229A0](0x74656863746152, 0xE700000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v5 tableSuffix:v4];

  return v6;
}

+ (id)dtoErrorDeviceTypeNotSupported
{
  v3 = MEMORY[0x1B27229A0](0xD000000000000023, 0x80000001B0357ED0);
  v4 = MEMORY[0x1B27229A0](0x74656863746152, 0xE700000000000000);
  v5 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v6 = [a1 localizedStringWithKey:v3 value:v5 tableSuffix:v4];

  return v6;
}

@end