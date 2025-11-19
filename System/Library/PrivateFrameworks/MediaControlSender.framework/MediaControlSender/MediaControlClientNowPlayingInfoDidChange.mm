@interface MediaControlClientNowPlayingInfoDidChange
@end

@implementation MediaControlClientNowPlayingInfoDidChange

void ___MediaControlClientNowPlayingInfoDidChange_block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  v3 = gLogCategory_MediaControlClientMetaData;
  if (!theDict)
  {
    if (gLogCategory_MediaControlClientMetaData <= 40 && (gLogCategory_MediaControlClientMetaData != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v9 = *(a1 + 32);
    v10 = 0;
    goto LABEL_33;
  }

  if (gLogCategory_MediaControlClientMetaData <= 10)
  {
    if (gLogCategory_MediaControlClientMetaData != -1)
    {
      goto LABEL_4;
    }

    v5 = _LogCategory_Initialize();
    v3 = gLogCategory_MediaControlClientMetaData;
    if (v5)
    {
      if (gLogCategory_MediaControlClientMetaData > 10)
      {
        goto LABEL_26;
      }

LABEL_4:
      if (v3 != -1 || _LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }
  }

  if (v3 <= 40 && (v3 != -1 || _LogCategory_Initialize()))
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x277D27B80]);
    if (Value)
    {
      v7 = Value;
      v8 = CFGetTypeID(Value);
      if (v8 == CFDataGetTypeID())
      {
        CFDataGetLength(v7);
      }
    }

    if (gLogCategory_MediaControlClientMetaData <= 40 && (gLogCategory_MediaControlClientMetaData != -1 || _LogCategory_Initialize()))
    {
      CFDictionaryGetValue(theDict, *MEMORY[0x277D27B70]);
      CFDictionaryGetValue(theDict, *MEMORY[0x277D27B60]);
      CFDictionaryGetValue(theDict, *MEMORY[0x277D27C88]);
      CFDictionaryGetValue(theDict, *MEMORY[0x277D27CB0]);
      CFDictionaryGetValue(theDict, *MEMORY[0x277D27CA8]);
      CFDictionaryGetValue(theDict, *MEMORY[0x277D27BE0]);
      CFDictionaryGetValue(theDict, *MEMORY[0x277D27BD8]);
      CFDictionaryGetValue(theDict, *MEMORY[0x277D27B90]);
LABEL_18:
      LogPrintF();
    }
  }

LABEL_26:
  if (CFDictionaryGetCount(theDict) != 2 || !CFDictionaryGetInt64() || !CFDictionaryGetValue(theDict, *MEMORY[0x277D27C80]))
  {
    v9 = *(a1 + 32);
    v10 = theDict;
LABEL_33:
    _MediaControlClientNowPlayingUpdate(v9, v10);
    goto LABEL_34;
  }

  if (gLogCategory_MediaControlClientMetaData <= 40 && (gLogCategory_MediaControlClientMetaData != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_34:
  v11 = *(a1 + 32);
  if (v11)
  {

    CFRelease(v11);
  }
}

@end