@interface ICContact
@end

@implementation ICContact

void __21___ICContact_flatten__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 length])
  {
    if ([v5 rangeOfCharacterFromSet:*(a1 + 32)] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 40) addObject:v5];
    }

    else
    {
      v3 = [v5 componentsSeparatedByCharactersInSet:*(a1 + 32)];
      v4 = [v3 mutableCopy];

      [v4 removeObject:&stru_28670C3F8];
      [*(a1 + 40) addObjectsFromArray:v4];
    }
  }
}

@end