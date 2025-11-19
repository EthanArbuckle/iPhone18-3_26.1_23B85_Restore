@interface ObjectCacheByCString
- (ObjectCacheByCString)init;
- (void)dealloc;
@end

@implementation ObjectCacheByCString

- (ObjectCacheByCString)init
{
  self->_dictionary = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, &kCStringDictionaryKeyCallBacks, MEMORY[0x277CBF150]);
  v4.receiver = self;
  v4.super_class = ObjectCacheByCString;
  return [(ObjectCacheByCString *)&v4 init];
}

- (void)dealloc
{
  dictionary = self->_dictionary;
  if (dictionary)
  {
    CFRelease(dictionary);
  }

  v4.receiver = self;
  v4.super_class = ObjectCacheByCString;
  [(ObjectCacheByCString *)&v4 dealloc];
}

@end