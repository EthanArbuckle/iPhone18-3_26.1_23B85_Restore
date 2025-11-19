@interface _MPCQCBMSessionTypeInfo
+ (id)infoWithIdentifier:(id)a3 account:(id)a4 supported:(BOOL)a5 supportedReason:(id)a6 exportable:(BOOL)a7 exportableReason:(id)a8;
@end

@implementation _MPCQCBMSessionTypeInfo

+ (id)infoWithIdentifier:(id)a3 account:(id)a4 supported:(BOOL)a5 supportedReason:(id)a6 exportable:(BOOL)a7 exportableReason:(id)a8
{
  v8 = a7;
  v10 = a5;
  v13 = a8;
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v17 = objc_alloc_init(_MPCQCBMSessionTypeInfo);
  [(_MPCQCBMSessionTypeInfo *)v17 setIdentifier:v16];

  [(_MPCQCBMSessionTypeInfo *)v17 setAccount:v15];
  [(_MPCQCBMSessionTypeInfo *)v17 setSupported:v10];
  [(_MPCQCBMSessionTypeInfo *)v17 setSupportedReason:v14];

  [(_MPCQCBMSessionTypeInfo *)v17 setExportable:v8];
  [(_MPCQCBMSessionTypeInfo *)v17 setExportableReason:v13];

  return v17;
}

@end