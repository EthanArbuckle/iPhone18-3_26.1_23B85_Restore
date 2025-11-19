@interface PADVNFaceprintDetector
@end

@implementation PADVNFaceprintDetector

uint64_t __37___PADVNFaceprintDetector_invalidate__block_invoke_2()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2 = [v1 persistentDomainForName:*MEMORY[0x277CCA208]];

    v3 = [v2 objectForKeyedSubscript:@"CIDVPAD.use-verbose-logging"];
    v4 = v3;
    if (!v3)
    {
      v3 = MEMORY[0x277CBEC28];
    }

    v5 = [v3 BOOLValue];

    return v5;
  }

  return result;
}

@end