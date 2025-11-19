@interface DCSMACreateDictionaryAssetsAsync
@end

@implementation DCSMACreateDictionaryAssetsAsync

Class __DCSMACreateDictionaryAssetsAsync_XPC_block_invoke(Class result, id a2)
{
  if (a2)
  {
    v3 = result;
    result = object_getClass(a2);
    if (result != MEMORY[0x277D86480])
    {
      value = xpc_dictionary_get_value(a2, "result");
      if (value)
      {
        v5 = value;
        length = xpc_data_get_length(value);
        if (length >= 1)
        {
          v7 = length;
          bytes_ptr = xpc_data_get_bytes_ptr(v5);
          v9 = CFDataCreate(0, bytes_ptr, v7);
          v10 = CFPropertyListCreateWithData(0, v9, 0, 0, 0);
          CFRelease(v9);
          if (v10)
          {
            Count = CFArrayGetCount(v10);
            if (Count >= 1)
            {
              v12 = Count;
              Mutable = 0;
              v14 = 0;
              v15 = MEMORY[0x277CBF128];
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
                MutableCopy = CFDictionaryCreateMutableCopy(0, 0, ValueAtIndex);
                if (!Mutable)
                {
                  Mutable = CFArrayCreateMutable(0, 0, v15);
                }

                CFArrayAppendValue(Mutable, MutableCopy);
                CFRelease(MutableCopy);
                ++v14;
              }

              while (v12 != v14);
            }
          }
        }
      }

      result = *(v3 + 4);
      if (result)
      {
        v18 = *(result + 2);

        return v18();
      }
    }
  }

  return result;
}

@end