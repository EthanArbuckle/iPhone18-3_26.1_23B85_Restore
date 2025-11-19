@interface NSMutableData
@end

@implementation NSMutableData

void __71__NSMutableData_RFC2231Support__mf_appendRFC2231CompliantValue_forKey___block_invoke()
{
  Mutable = CFCharacterSetCreateMutable(0);
  v2.location = 32;
  v2.length = 95;
  CFCharacterSetAddCharactersInRange(Mutable, v2);
  CFCharacterSetInvert(Mutable);
  mf_appendRFC2231CompliantValue_forKey__specialCSet = CFCharacterSetCreateCopy(0, Mutable);

  CFRelease(Mutable);
}

@end