@interface CreateDCSDictionaryCardClass
@end

@implementation CreateDCSDictionaryCardClass

id ___CreateDCSDictionaryCardClass_block_invoke_3(int a1, id obj)
{
  outValue = 0;
  object_getInstanceVariable(obj, "_dictionaryID", &outValue);
  ReleaseObjCObject(outValue);
  object_getInstanceVariable(obj, "_searchString", &outValue);
  ReleaseObjCObject(outValue);
  v4.receiver = obj;
  v4.super_class = objc_getClass("SFCard");
  return objc_msgSendSuper(&v4, sel_dealloc);
}

id ___CreateDCSDictionaryCardClass_block_invoke_5(int a1, id obj, void *a3)
{
  outValue = 0;
  object_getInstanceVariable(obj, "_dictionaryID", &outValue);
  [a3 encodeObject:outValue forKey:@"dcs_dictionaryID"];
  object_getInstanceVariable(obj, "_searchString", &outValue);
  [a3 encodeObject:outValue forKey:@"dcs_searchString"];
  v6.receiver = obj;
  v6.super_class = objc_getClass("SFCard");
  return objc_msgSendSuper(&v6, sel_encodeWithCoder_, a3);
}

id ___CreateDCSDictionaryCardClass_block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v8.receiver = a2;
  v8.super_class = objc_getClass("SFCard");
  v4 = objc_msgSendSuper(&v8, sel_initWithCoder_, a3);
  v5 = [a3 decodeObjectOfClass:objc_getClass("NSString") forKey:@"dcs_dictionaryID"];
  object_setInstanceVariableWithStrongDefault(v4, "_dictionaryID", v5);
  v6 = [a3 decodeObjectOfClass:objc_getClass("NSString") forKey:@"dcs_searchString"];
  object_setInstanceVariableWithStrongDefault(v4, "_searchString", v6);
  return v4;
}

void ___CreateDCSDictionaryCardClass_block_invoke_7(uint64_t a1, id a2, uint64_t a3)
{
  v6 = [a2 cardSections];
  if (v6)
  {
    v7 = *(a3 + 16);

    v7(a3, v6);
  }

  else
  {
    global_queue = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___CreateDCSDictionaryCardClass_block_invoke_8;
    block[3] = &unk_27835AA40;
    v9 = *(a1 + 32);
    block[4] = a2;
    block[5] = v9;
    block[6] = a3;
    dispatch_async(global_queue, block);
  }
}

uint64_t ___CreateDCSDictionaryCardClass_block_invoke_8(uint64_t a1)
{
  outValue = 0;
  object_getInstanceVariable(*(a1 + 32), "_dictionaryID", &outValue);
  v2 = outValue;
  v3 = DCSCopyActiveDictionaries(0);
  v4 = v3;
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count < 1)
    {
LABEL_6:
      v10 = 0;
    }

    else
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
        Identifier = DCSDictionaryGetIdentifier(ValueAtIndex);
        if (CFStringCompare(Identifier, v2, 0) == kCFCompareEqualTo)
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_6;
        }
      }

      v10 = CFRetain(ValueAtIndex);
    }

    CFRelease(v4);
    if (v10)
    {
      theString = 0;
      object_getInstanceVariable(*(a1 + 32), "_searchString", &theString);
      v11 = theString;
      if (theString && CFStringGetLength(theString) >= 1)
      {
        v12 = *(a1 + 40);
        v13 = objc_opt_new();
        values = v13;
        v21.length = CFStringGetLength(v11);
        v21.location = 0;
        v14 = DCSCopyDefinitionMarkup(v10, v11, v21, 1, 0);
        if (v14)
        {
          v15 = v14;
          [v13 setHtmlString_];
          CFRelease(v15);
        }

        v16 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
        [*(a1 + 32) setCardSections_];
        CFRelease(v16);
      }

      CFRelease(v10);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

@end