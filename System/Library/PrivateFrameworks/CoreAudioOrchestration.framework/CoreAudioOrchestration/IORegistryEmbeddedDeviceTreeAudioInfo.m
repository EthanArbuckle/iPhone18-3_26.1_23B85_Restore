@interface IORegistryEmbeddedDeviceTreeAudioInfo
- (void)createCFTypeRefForKey:(id)a3 atPath:(id)a4 error:(id *)a5;
@end

@implementation IORegistryEmbeddedDeviceTreeAudioInfo

- (void)createCFTypeRefForKey:(id)a3 atPath:(id)a4 error:(id *)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  GetEntryForPath([v8 UTF8String], &entry);
  if (!entry)
  {
    if (!a5)
    {
LABEL_8:
      v10 = 0;
      goto LABEL_9;
    }

    v15 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v12 = [@"path not found: " stringByAppendingString:v8];
    v22[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v14 = [v15 errorWithDomain:@"EDTReadingErrorDomain" code:1 userInfo:v13];
LABEL_7:
    *a5 = v14;

    goto LABEL_8;
  }

  CFProperty = IORegistryEntryCreateCFProperty(entry, v7, *MEMORY[0x277CBECE8], 0);
  v10 = CFProperty;
  if (a5 && !CFProperty)
  {
    v11 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v12 = [@"key not found: " stringByAppendingString:v7];
    v20 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v14 = [v11 errorWithDomain:@"EDTReadingErrorDomain" code:2 userInfo:v13];
    goto LABEL_7;
  }

LABEL_9:
  RegistryEntry::~RegistryEntry(&entry);

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

@end