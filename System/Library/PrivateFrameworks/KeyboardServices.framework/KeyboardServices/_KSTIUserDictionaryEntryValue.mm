@interface _KSTIUserDictionaryEntryValue
+ (id)valueWithEntry:(id)entry;
- (BOOL)matchesEntry:(id)entry;
- (NSString)description;
- (_KSTIUserDictionaryEntryValue)initWithCoder:(id)coder;
- (id)shortcutForSorting;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _KSTIUserDictionaryEntryValue

+ (id)valueWithEntry:(id)entry
{
  entryCopy = entry;
  v5 = objc_alloc_init(self);
  phrase = [entryCopy phrase];
  [v5 setPhrase:phrase];

  shortcut = [entryCopy shortcut];
  [v5 setShortcut:shortcut];

  timestamp = [entryCopy timestamp];

  [v5 setTimestamp:timestamp];

  return v5;
}

- (_KSTIUserDictionaryEntryValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _KSTIUserDictionaryEntryValue;
  v5 = [(_KSTIUserDictionaryEntryValue *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phrase"];
    v7 = [v6 copy];
    phrase = v5->_phrase;
    v5->_phrase = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcut"];
    v10 = [v9 copy];
    shortcut = v5->_shortcut;
    v5->_shortcut = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  phrase = self->_phrase;
  v8 = coderCopy;
  if (phrase)
  {
    [coderCopy encodeObject:phrase forKey:@"phrase"];
    coderCopy = v8;
  }

  shortcut = self->_shortcut;
  if (shortcut)
  {
    [v8 encodeObject:shortcut forKey:@"shortcut"];
    coderCopy = v8;
  }

  timestamp = self->_timestamp;
  if (timestamp)
  {
    [v8 encodeObject:timestamp forKey:@"timestamp"];
    coderCopy = v8;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  shortcut = [(_KSTIUserDictionaryEntryValue *)self shortcut];
  phrase = [(_KSTIUserDictionaryEntryValue *)self phrase];
  v6 = [v3 stringWithFormat:@"{%@ => %@}", shortcut, phrase];

  return v6;
}

- (BOOL)matchesEntry:(id)entry
{
  entryCopy = entry;
  phrase = [(_KSTIUserDictionaryEntryValue *)self phrase];
  phrase2 = [entryCopy phrase];
  v7 = phrase2;
  if (phrase)
  {
    phrase3 = [(_KSTIUserDictionaryEntryValue *)self phrase];
    v9 = [v7 isEqualToString:phrase3];
  }

  else
  {
    v9 = phrase2 == 0;
  }

  shortcut = [(_KSTIUserDictionaryEntryValue *)self shortcut];
  shortcut2 = [entryCopy shortcut];
  v12 = shortcut2;
  if (shortcut)
  {
    shortcut3 = [(_KSTIUserDictionaryEntryValue *)self shortcut];
    v14 = [v12 isEqualToString:shortcut3];
  }

  else
  {
    v14 = shortcut2 == 0;
  }

  return v9 & v14;
}

- (id)shortcutForSorting
{
  shortcut = [(_KSTIUserDictionaryEntryValue *)self shortcut];
  v3 = shortcut;
  if (shortcut)
  {
    v4 = shortcut;
  }

  else
  {
    v4 = &stru_286796E30;
  }

  v5 = v4;

  return v4;
}

@end