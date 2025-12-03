@interface _MPCQCBMSessionTypeInfo
+ (id)infoWithIdentifier:(id)identifier account:(id)account supported:(BOOL)supported supportedReason:(id)reason exportable:(BOOL)exportable exportableReason:(id)exportableReason;
@end

@implementation _MPCQCBMSessionTypeInfo

+ (id)infoWithIdentifier:(id)identifier account:(id)account supported:(BOOL)supported supportedReason:(id)reason exportable:(BOOL)exportable exportableReason:(id)exportableReason
{
  exportableCopy = exportable;
  supportedCopy = supported;
  exportableReasonCopy = exportableReason;
  reasonCopy = reason;
  accountCopy = account;
  identifierCopy = identifier;
  v17 = objc_alloc_init(_MPCQCBMSessionTypeInfo);
  [(_MPCQCBMSessionTypeInfo *)v17 setIdentifier:identifierCopy];

  [(_MPCQCBMSessionTypeInfo *)v17 setAccount:accountCopy];
  [(_MPCQCBMSessionTypeInfo *)v17 setSupported:supportedCopy];
  [(_MPCQCBMSessionTypeInfo *)v17 setSupportedReason:reasonCopy];

  [(_MPCQCBMSessionTypeInfo *)v17 setExportable:exportableCopy];
  [(_MPCQCBMSessionTypeInfo *)v17 setExportableReason:exportableReasonCopy];

  return v17;
}

@end