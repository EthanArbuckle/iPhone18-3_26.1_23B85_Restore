@interface MFListUnsubscribeMessageGenerator
@end

@implementation MFListUnsubscribeMessageGenerator

void __58__MFListUnsubscribeMessageGenerator_iOS_senderForCommand___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  obj = a2;
  v7 = a3;
  if ([v7 isEqual:MEMORY[0x1E695E118]])
  {
    v8 = obj;
    v9 = [v8 emailAddressValue];
    v10 = [v9 simpleAddress];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v8 stringValue];
    }

    obj = v12;

    if (![obj caseInsensitiveCompare:*(a1 + 32)])
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
      *a4 = 1;
    }
  }
}

@end