@interface AVVCStartRecordSettings(debugDescription)
- (id)debugDescription;
@end

@implementation AVVCStartRecordSettings(debugDescription)

- (id)debugDescription
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"[streamHandleId = %d]", objc_msgSend(self, "streamID")];
  [string appendFormat:@"[startHostTime = %llu]", objc_msgSend(self, "startHostTime")];
  [string appendFormat:@"[startAlert = %d]", objc_msgSend(self, "startAlert")];
  [string appendFormat:@"[stopAlert = %d]", objc_msgSend(self, "stopAlert")];
  [string appendFormat:@"[stopOnErrorAlert = %d]", objc_msgSend(self, "stopOnErrorAlert")];
  skipAlert = [self skipAlert];
  v4 = @"NO";
  if (skipAlert)
  {
    v4 = @"YES";
  }

  [string appendFormat:@"[skipAlert = %@]", v4];

  return string;
}

@end