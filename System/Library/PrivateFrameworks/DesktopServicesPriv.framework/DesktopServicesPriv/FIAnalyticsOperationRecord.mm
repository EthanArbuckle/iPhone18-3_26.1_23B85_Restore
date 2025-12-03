@interface FIAnalyticsOperationRecord
- (BOOL)validate;
- (FIAnalyticsOperationRecord)initWithEventName:(id)name;
- (void)setFileSystem:(unint64_t)system forKey:(id)key;
- (void)setItemType:(unint64_t)type;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation FIAnalyticsOperationRecord

- (FIAnalyticsOperationRecord)initWithEventName:(id)name
{
  v4.receiver = self;
  v4.super_class = FIAnalyticsOperationRecord;
  return [(FIAnalyticsRecord *)&v4 initWithEventName:name];
}

- (BOOL)validate
{
  if ([(NSString *)self->super._eventName isEqualToString:@"com.apple.finder.copymove.result"]|| (v3 = [(NSString *)self->super._eventName isEqualToString:@"com.apple.finder.emptytrash.result"]))
  {
    v5.receiver = self;
    v5.super_class = FIAnalyticsOperationRecord;
    LOBYTE(v3) = [(FIAnalyticsRecord *)&v5 validate];
  }

  return v3;
}

- (void)setItemType:(unint64_t)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [FIAnalyticsOperationRecord setObject:"setObject:forKey:" forKey:?];
}

- (void)setFileSystem:(unint64_t)system forKey:(id)key
{
  keyCopy = key;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:system];
  [(FIAnalyticsOperationRecord *)self setObject:v6 forKey:keyCopy];
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (([keyCopy isEqualToString:@"SubKind"] & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"Status") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"ItemType") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"IsSystemRestore") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"IsVolumeRestore") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"SrcFS") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"DstFS") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"SrcNameMultiByteChars") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"SrcPathMultiByteChars") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"DstPathMultiByteChars") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"IsCopyExactly") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"NumRootItems") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"SrcIsICloud") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"DstIsICloud") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"TotalVisibleItems") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"TotalFSItems") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"TotalBytes") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"CompletedVisibleItems") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"CompletedFSItems") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"CompletedBytes") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"LastStage") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"ErrorMessage") & 1) == 0)
  {
    [keyCopy isEqualToString:@"AlertMsg"];
  }

  [(NSMutableDictionary *)self->super._eventDict setObject:objectCopy forKeyedSubscript:keyCopy];
}

@end