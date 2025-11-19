@interface _DPToolArguments
+ (id)usage;
- (_DPToolArguments)init;
- (_DPToolArguments)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation _DPToolArguments

- (_DPToolArguments)init
{
  v3 = [MEMORY[0x277CBEC10] mutableCopy];
  [v3 dp_addStringForKey:kDPTCommandKey];
  [v3 dp_addStringForKey:kDPTArgumentsCSVKey];
  [v3 dp_addStringForKey:kDPTMetadataKey];
  [v3 dp_addStringForKey:kDPTRecordKey];
  [v3 dp_addBoolForKey:kDPTVerboseKey];
  [v3 dp_addStringForKey:kDPTDataBaseDirectoryPath];
  [v3 dp_addBoolForKey:kDPTWriteOKKey];
  [v3 dp_addBoolForKey:kDPTEnforceMetadataKey];
  v4 = [(_DPToolArguments *)self initWithDictionary:v3];

  return v4;
}

- (_DPToolArguments)initWithDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _DPToolArguments;
  v5 = [(_DPToolArguments *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:kDPTCommandKey];
    command = v5->_command;
    v5->_command = v6;

    if (v5->_command)
    {
      v8 = [v4 objectForKeyedSubscript:kDPTMetadataKey];
      metadata = v5->_metadata;
      v5->_metadata = v8;

      v10 = [v4 objectForKeyedSubscript:kDPTEnforceMetadataKey];
      v5->_enforceMetadata = [v10 BOOLValue];

      if (!v5->_enforceMetadata || v5->_metadata)
      {
        v11 = [v4 objectForKeyedSubscript:kDPTRecordKey];
        recordKey = v5->_recordKey;
        v5->_recordKey = v11;

        if (!v5->_recordKey)
        {
          v5->_recordKey = @"com.apple.dprivacytool.TestKey";
        }

        v13 = [v4 objectForKeyedSubscript:kDPTArgumentsCSVKey];
        arguments = v5->_arguments;
        v5->_arguments = v13;

        v15 = [v4 objectForKeyedSubscript:kDPTVerboseKey];
        v5->_verbose = v15 != 0;

        v16 = [v4 objectForKeyedSubscript:kDPTDataBaseDirectoryPath];
        databasePath = v5->_databasePath;
        v5->_databasePath = v16;

        v18 = [v4 objectForKeyedSubscript:kDPTWriteOKKey];

        if (v18)
        {
          v19 = [v4 objectForKeyedSubscript:kDPTWriteOKKey];
          v5->_writeOK = [v19 BOOLValue];
        }

        else
        {
          v5->_writeOK = 0;
        }

        goto LABEL_10;
      }

      NSLog(&cfstr_IsSetToYesButI.isa, kDPTEnforceMetadataKey, kDPTMetadataKey, kDPTMetadataKey);
    }

    v20 = 0;
    goto LABEL_13;
  }

LABEL_10:
  v20 = v5;
LABEL_13:

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = *&self->_command;
  recordKey = self->_recordKey;
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_verbose];
  v8 = [v3 stringWithFormat:@"%@: { command=%@  arguments=%@ ; recordKey=%@ ; verbose=%@ }", v5, v10, recordKey, v7];;

  return v8;
}

+ (id)usage
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Usage:\ndprivacytool -%@ <command> -%@ arguments to command [-%@ '\\{key1:value, key2:value \\}'] [-%@ keyName] [-%@ YES/NO] [[-%@ databasePathname] [-%@ YES/NO]], [-%@ YES/NO]\n", kDPTCommandKey, kDPTArgumentsCSVKey, kDPTMetadataKey, kDPTRecordKey, kDPTVerboseKey, kDPTDataBaseDirectoryPath, kDPTWriteOKKey, kDPTEnforceMetadataKey];
  v3 = MEMORY[0x277CCACA8];
  v4 = +[_DPToolCommand supportedCommands];
  v5 = [v3 stringWithFormat:@"Supported commands:\n%@\n", v4];

  v6 = MEMORY[0x277CCACA8];
  v7 = +[_DPToolCommand supportedMetadataKeys];
  v8 = [v6 stringWithFormat:@"Supported metadata keys:\n%@\n", v7];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Notes:\n[-%@ YES] is only applicable with [-%@ databasePathname]\n[-%@ YES] is only applicable for record commands\n", kDPTWriteOKKey, kDPTDataBaseDirectoryPath, kDPTEnforceMetadataKey];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@%@%@", v2, v5, v8, @"Example of arguments\n\trecordnumbers - 1, 2, 3, 4\n\trecordnumbersvectors - 1, 2, 59, 2\n\trecordbitvalues - 12, 21, 37\n\trecordbitvectors - 1101110001010101, 1111100001101010001\n\trecordfloatvectors - 1, 2.5, -3.0; 3.14, 2.2, 5.9; -4.12, 2.15, 1.99\n\trecordstrings - string1, string2, string3\n\trecordwords - 2:SecondWord, 1:FirstWord, 3:ThirdWord\n\tlistreports - all or pending\nExample of metadata (only JSON dictionary with escaped curly braces is supported)\n\tv1 - '\\{VersionHash:v1\\}'\n\tv2 - '\\{VersionHash:v2, \n\t\tDediscoTaskConfig:\\{\n\t\tVersion:0.1.0, \n\t\tDediscoServerConfiguration:\\{\n\t\t  Leader:dap-leader-apple-01, \n\t\t  Helpers:[dap-helper-apple-01]\\}, \n\t\tTaskExpiration:4822500466, \n\t\tMinBatchSize:2, \n\t\tMaxBatchSize:1000\\}\\}'\n\n", v9];;

  return v10;
}

@end