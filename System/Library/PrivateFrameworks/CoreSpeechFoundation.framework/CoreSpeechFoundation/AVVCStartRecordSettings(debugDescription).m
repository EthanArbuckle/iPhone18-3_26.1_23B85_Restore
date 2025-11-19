@interface AVVCStartRecordSettings(debugDescription)
- (id)debugDescription;
@end

@implementation AVVCStartRecordSettings(debugDescription)

- (id)debugDescription
{
  v2 = [MEMORY[0x1E696AD60] string];
  [v2 appendFormat:@"[streamHandleId = %d]", objc_msgSend(a1, "streamID")];
  [v2 appendFormat:@"[startHostTime = %llu]", objc_msgSend(a1, "startHostTime")];
  [v2 appendFormat:@"[startAlert = %d]", objc_msgSend(a1, "startAlert")];
  [v2 appendFormat:@"[stopAlert = %d]", objc_msgSend(a1, "stopAlert")];
  [v2 appendFormat:@"[stopOnErrorAlert = %d]", objc_msgSend(a1, "stopOnErrorAlert")];
  v3 = [a1 skipAlert];
  v4 = @"NO";
  if (v3)
  {
    v4 = @"YES";
  }

  [v2 appendFormat:@"[skipAlert = %@]", v4];

  return v2;
}

@end