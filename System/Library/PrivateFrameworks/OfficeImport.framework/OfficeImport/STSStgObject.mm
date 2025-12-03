@interface STSStgObject
+ (void)throwIfError:(int)error;
- (STSStgObject)init;
@end

@implementation STSStgObject

- (STSStgObject)init
{
  v6.receiver = self;
  v6.super_class = STSStgObject;
  v2 = [(STSStgObject *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (void)throwIfError:(int)error
{
  switch(error)
  {
    case 0:
      return;
    case 1:
      v5 = @"STFileNotFound";
      v6 = MEMORY[0x277CBEAD8];
      v7 = @"Structured storage library generated a file not found exception.";

      goto LABEL_4;
    case 2:
      v5 = @"STIllegalAccess";
      v6 = MEMORY[0x277CBEAD8];
      v7 = @"Structured storage library generated an illegal access exception.";

      goto LABEL_4;
    case 3:
      v5 = @"STFileNotSStg";
      v6 = MEMORY[0x277CBEAD8];
      v7 = @"Structured storage library generated a file not structured storage exception.";

      goto LABEL_4;
    case 4:
      v5 = @"STFileIO";
      v6 = MEMORY[0x277CBEAD8];
      v7 = @"Structured storage library generated a file I/O exception.";

      goto LABEL_4;
    case 5:
      v5 = @"STMemory";
      v6 = MEMORY[0x277CBEAD8];
      v7 = @"Structured storage library generated a memory exception.";

      goto LABEL_4;
    case 6:
      v5 = @"STIllegalCall";
      v6 = MEMORY[0x277CBEAD8];
      v7 = @"Structured storage library generated an illegal call exception.";

      goto LABEL_4;
    case 7:
      v5 = @"STStgLocked";
      v6 = MEMORY[0x277CBEAD8];
      v7 = @"Structured storage library generated a storage locked exception.";

      goto LABEL_4;
    case 8:
      v5 = @"STCorruptedFAT";
      v6 = MEMORY[0x277CBEAD8];
      v7 = @"Structured storage library generated a corrupted FAT exception.";

      goto LABEL_4;
    case 9:
      v5 = @"STNotStorage";
      v6 = MEMORY[0x277CBEAD8];
      v7 = @"Structured storage library generated a not storage exception.";

      goto LABEL_4;
    case 10:
      v5 = @"STNotStream";
      v6 = MEMORY[0x277CBEAD8];
      v7 = @"Structured storage library generated a not stream exception.";

      goto LABEL_4;
    case 11:
      v5 = @"STChildNotFound";
      v6 = MEMORY[0x277CBEAD8];
      v7 = @"Structured storage library generated a child not found exception.";

      goto LABEL_4;
    case 12:
      v5 = @"STNotSupported";
      v6 = MEMORY[0x277CBEAD8];
      v7 = @"Structured storage library generated a not supported excepiton.";

      goto LABEL_4;
    case 13:
      v5 = @"STPropertyNotFound";
      v6 = MEMORY[0x277CBEAD8];
      v7 = @"Structured storage library generated a property not found exception.";

      goto LABEL_4;
    case 14:
      v5 = @"STPropertyFormat";
      v6 = MEMORY[0x277CBEAD8];
      v7 = @"Structured storage library generated a property format exception.";

      goto LABEL_4;
    case 15:
      v5 = @"STEndOfStream";
      v6 = MEMORY[0x277CBEAD8];
      v7 = @"Structured storage library generated an end of stream exception.";

      goto LABEL_4;
    case 16:
      v5 = @"STCorruptedDirectory";
      v6 = MEMORY[0x277CBEAD8];
      v7 = @"Structured storage library generated a corrupted directory exception.";

      goto LABEL_4;
    case 17:
      [MEMORY[0x277CBEAD8] raise:@"STZeroLengthFile" format:{@"Structured storage library generated a zero length file exception.", v3}];
      goto LABEL_36;
    default:
LABEL_36:
      v6 = MEMORY[0x277CBEAD8];
      v5 = *MEMORY[0x277CBE648];
      v7 = @"Structured storage library generated a generic exception";

LABEL_4:
      [v6 raise:v5 format:v7];
      return;
  }
}

@end