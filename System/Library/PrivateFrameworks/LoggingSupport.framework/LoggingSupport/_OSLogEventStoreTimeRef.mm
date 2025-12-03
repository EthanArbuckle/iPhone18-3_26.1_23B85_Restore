@interface _OSLogEventStoreTimeRef
+ (id)timeRef;
- (_OSLogEventStoreTimeRef)initWithDictionary:(id)dictionary;
- (_OSLogEventStoreTimeRef)initWithUUID:(unsigned __int8)d[16] continuous:(unint64_t)continuous;
@end

@implementation _OSLogEventStoreTimeRef

+ (id)timeRef
{
  v9 = *MEMORY[0x277D85DE8];
  memset(uu, 0, sizeof(uu));
  v3 = mach_continuous_time();
  boot_uuid = _os_trace_get_boot_uuid();
  uuid_parse(boot_uuid, uu);
  v5 = [[self alloc] initWithUUID:uu continuous:v3];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (_OSLogEventStoreTimeRef)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(_OSLogEventStoreTimeRef *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"UUID"];
    v7 = [dictionaryCopy objectForKeyedSubscript:@"ContinuousTime"];
    v8 = v7;
    if (!v6 || !v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || uuid_parse([v6 UTF8String], v5->_uuid) == -1)
    {

      v9 = 0;
      goto LABEL_10;
    }

    v5->_ct = [v8 unsignedLongLongValue];
  }

  v9 = v5;
LABEL_10:

  return v9;
}

- (_OSLogEventStoreTimeRef)initWithUUID:(unsigned __int8)d[16] continuous:(unint64_t)continuous
{
  result = [(_OSLogEventStoreTimeRef *)self init];
  if (result)
  {
    *result->_uuid = *d;
    result->_ct = continuous;
  }

  return result;
}

@end