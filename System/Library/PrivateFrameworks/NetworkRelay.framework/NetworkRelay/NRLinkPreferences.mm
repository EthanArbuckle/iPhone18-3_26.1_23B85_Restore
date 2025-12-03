@interface NRLinkPreferences
+ (id)createFromEncodedXPCDict:(id)dict;
- (NRLinkPreferences)initWithLinkType:(unsigned __int8)type;
- (id)copyEncodedXPCDict;
- (id)copyLongDescription;
- (id)copyShortDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NRLinkPreferences

- (id)copyShortDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  StringFromNRLinkType = createStringFromNRLinkType([(NRLinkPreferences *)self linkType]);
  stringFromNRLinkType = [v3 initWithFormat:@"LinkPref[%@]", StringFromNRLinkType];

  return stringFromNRLinkType;
}

- (id)copyLongDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  StringFromNRLinkType = createStringFromNRLinkType([(NRLinkPreferences *)self linkType]);
  stringFromNRLinkType = [v3 initWithFormat:@"Link Type: %@", StringFromNRLinkType];

  return stringFromNRLinkType;
}

- (id)description
{
  copyShortDescription = [(NRLinkPreferences *)self copyShortDescription];

  return copyShortDescription;
}

- (id)copyEncodedXPCDict
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = xpc_dictionary_create(0, 0, 0);
  if (!v3)
  {
    v7 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v8 = v7;
      v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v10 = nrCopyLogObj_461();
    _NRLogWithArgs(v10, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v11, v12, v13, v14, v15, "");

LABEL_7:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v16 = *__error();
    v17 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v17, "nr_xpc_dictionary_create");
    v18 = nrCopyLogObj_461();
    _NRLogAbortWithPack(v18);
  }

  v4 = v3;
  xpc_dictionary_set_uint64(v3, "LinkType", [(NRLinkPreferences *)self linkType]);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (NRLinkPreferences)initWithLinkType:(unsigned __int8)type
{
  v19 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = NRLinkPreferences;
  result = [(NRLinkPreferences *)&v18 init];
  if (!result)
  {
    v6 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v7 = v6;
      v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v9 = nrCopyLogObj_461();
    _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v10, v11, v12, v13, v14, "");

LABEL_7:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v15 = *__error();
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "[NRLinkPreferences initWithLinkType:]";
    v17 = nrCopyLogObj_461();
    _NRLogAbortWithPack(v17);
  }

  result->_linkType = type;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  linkType = [(NRLinkPreferences *)self linkType];

  return [v4 initWithLinkType:linkType];
}

+ (id)createFromEncodedXPCDict:(id)dict
{
  dictCopy = dict;
  v4 = dictCopy;
  if (!dictCopy)
  {
    v9 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v11 = v9;
      v12 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);

      if (!v12)
      {
        goto LABEL_15;
      }
    }

    v8 = nrCopyLogObj_461();
    _NRLogWithArgs(v8, 17, "%s called with null encodedDict", v13, v14, v15, v16, v17, "+[NRLinkPreferences createFromEncodedXPCDict:]");
LABEL_14:
    v5 = 0;
    goto LABEL_5;
  }

  if (MEMORY[0x25F8746E0](dictCopy) != MEMORY[0x277D86468])
  {
    v10 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v18 = v10;
      v19 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);

      if (!v19)
      {
        goto LABEL_15;
      }
    }

    v8 = nrCopyLogObj_461();
    _NRLogWithArgs(v8, 17, "%s called with null xpc_get_type(encodedDict) == (&_xpc_type_dictionary)", v20, v21, v22, v23, v24, "+[NRLinkPreferences createFromEncodedXPCDict:]");
    goto LABEL_14;
  }

  if (xpc_dictionary_get_uint64(v4, "LinkType") != 1)
  {
LABEL_15:
    v5 = 0;
    goto LABEL_16;
  }

  v5 = objc_alloc_init(NRBluetoothLinkPreferences);
  v6 = NRLPCopyUInt64NSNumberFromXPCDict(v4, "InputBPS");
  [(NRBluetoothLinkPreferences *)v5 setInputBytesPerSecond:v6];

  v7 = NRLPCopyUInt64NSNumberFromXPCDict(v4, "OutputBPS");
  [(NRBluetoothLinkPreferences *)v5 setOutputBytesPerSecond:v7];

  v8 = NRLPCopyUInt64NSNumberFromXPCDict(v4, "PacketsPerSecond");
  [(NRBluetoothLinkPreferences *)v5 setPacketsPerSecond:v8];
LABEL_5:

LABEL_16:
  return v5;
}

@end