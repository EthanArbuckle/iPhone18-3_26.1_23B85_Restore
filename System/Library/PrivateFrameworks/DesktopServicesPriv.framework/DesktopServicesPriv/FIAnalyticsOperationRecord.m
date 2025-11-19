@interface FIAnalyticsOperationRecord
- (BOOL)validate;
- (FIAnalyticsOperationRecord)initWithEventName:(id)a3;
- (void)setFileSystem:(unint64_t)a3 forKey:(id)a4;
- (void)setItemType:(unint64_t)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation FIAnalyticsOperationRecord

- (FIAnalyticsOperationRecord)initWithEventName:(id)a3
{
  v4.receiver = self;
  v4.super_class = FIAnalyticsOperationRecord;
  return [(FIAnalyticsRecord *)&v4 initWithEventName:a3];
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

- (void)setItemType:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [FIAnalyticsOperationRecord setObject:"setObject:forKey:" forKey:?];
}

- (void)setFileSystem:(unint64_t)a3 forKey:(id)a4
{
  v7 = a4;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(FIAnalyticsOperationRecord *)self setObject:v6 forKey:v7];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (([v6 isEqualToString:@"SubKind"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"Status") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"ItemType") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"IsSystemRestore") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"IsVolumeRestore") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"SrcFS") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"DstFS") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"SrcNameMultiByteChars") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"SrcPathMultiByteChars") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"DstPathMultiByteChars") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"IsCopyExactly") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"NumRootItems") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"SrcIsICloud") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"DstIsICloud") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"TotalVisibleItems") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"TotalFSItems") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"TotalBytes") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"CompletedVisibleItems") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"CompletedFSItems") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"CompletedBytes") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"LastStage") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"ErrorMessage") & 1) == 0)
  {
    [v6 isEqualToString:@"AlertMsg"];
  }

  [(NSMutableDictionary *)self->super._eventDict setObject:v7 forKeyedSubscript:v6];
}

@end