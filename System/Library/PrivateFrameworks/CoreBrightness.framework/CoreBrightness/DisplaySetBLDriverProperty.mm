@interface DisplaySetBLDriverProperty
@end

@implementation DisplaySetBLDriverProperty

void ____DisplaySetBLDriverProperty_block_invoke(uint64_t a1)
{
  v21 = a1;
  v20 = a1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x20000000;
  v18 = 32;
  v19 = 0;
  v2 = *(*(a1 + 32) + 144);
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = ____DisplaySetBLDriverProperty_block_invoke_2;
  v12 = &unk_1E867C928;
  v13 = &v15;
  v14 = *(a1 + 32);
  disp_dispatch_sync(v2, &v8);
  if (v16[3])
  {
    Count = CFDictionaryGetCount(v16[3]);
    if (Count > 0)
    {
      property = CFDictionaryGetValue(v16[3], @"brightness-nits-cap");
      if (property)
      {
        if ((DisplayHasDCP(*(a1 + 32)) & 1) != 0 && *(*(a1 + 32) + 108) && (*(*(a1 + 32) + 321) & 1) == 0)
        {
          IORegistryEntrySetCFProperty(*(*(a1 + 32) + 108), @"BLNitsCap", property);
        }

        else
        {
          __SetBLDriverProperty(@"brightness-nits-cap", property, *(a1 + 32));
        }

        CFDictionaryRemoveValue(v16[3], @"brightness-nits-cap");
        --Count;
      }

      Value = CFDictionaryGetValue(v16[3], @"PreStrobeConfigNits");
      if (Value)
      {
        __SetBLDriverProperty(@"PreStrobeConfigNits", Value, *(a1 + 32));
        CFDictionaryRemoveValue(v16[3], @"PreStrobeConfigNits");
        --Count;
      }

      cf = CFDictionaryGetValue(v16[3], @"DisplayBrightnessSliderPosition");
      if (cf)
      {
        CFRetain(cf);
        CFDictionaryRemoveValue(v16[3], @"DisplayBrightnessSliderPosition");
        --Count;
      }

      if (Count > 0)
      {
        CFDictionaryApplyFunction(v16[3], __SetBLDriverProperty, *(a1 + 32));
      }

      if (cf)
      {
        __SetBLDriverProperty(@"DisplayBrightnessSliderPosition", cf, *(a1 + 32));
        CFRelease(cf);
      }
    }

    CFRelease(v16[3]);
  }

  _Block_object_dispose(&v15, 8);
}

uint64_t ____DisplaySetBLDriverProperty_block_invoke_2(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = *(*(result + 40) + 128);
  *(*(result + 40) + 128) = 0;
  return result;
}

@end