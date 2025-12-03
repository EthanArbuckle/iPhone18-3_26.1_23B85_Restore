@interface _DASFileProtection
+ (_DASFileProtection)protectionWithType:(id)type;
+ (id)complete;
+ (id)completeUnlessOpen;
+ (id)completeUntilFirstUserAuthentication;
+ (id)completeWhenUserInactive;
+ (id)none;
- (BOOL)indicatesProtection;
- (BOOL)isEqual:(id)equal;
- (_DASFileProtection)initWithCoder:(id)coder;
- (_DASFileProtection)initWithProtection:(id)protection;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DASFileProtection

- (id)description
{
  if ([(NSString *)self->_fileProtection isEqualToString:*MEMORY[0x1E696A378]])
  {
    return @"ClassA";
  }

  if ([(NSString *)self->_fileProtection isEqualToString:*MEMORY[0x1E696A380]])
  {
    return @"ClassB";
  }

  if ([(NSString *)self->_fileProtection isEqualToString:*MEMORY[0x1E696A388]])
  {
    return @"ClassC";
  }

  if ([(NSString *)self->_fileProtection isEqualToString:*MEMORY[0x1E696A398]])
  {
    return @"ClassCX";
  }

  return @"None";
}

+ (id)none
{
  if (none_onceToken != -1)
  {
    +[_DASFileProtection none];
  }

  v3 = none_fileCompletionNone;

  return v3;
}

+ (id)completeUnlessOpen
{
  if (completeUnlessOpen_onceToken != -1)
  {
    +[_DASFileProtection completeUnlessOpen];
  }

  v3 = completeUnlessOpen_fileCompletionCompleteUnlessOpen;

  return v3;
}

+ (id)completeWhenUserInactive
{
  if (completeWhenUserInactive_onceToken != -1)
  {
    +[_DASFileProtection completeWhenUserInactive];
  }

  v3 = completeWhenUserInactive_fileCompletionCompleteWhenUserInactive;

  return v3;
}

+ (id)completeUntilFirstUserAuthentication
{
  if (completeUntilFirstUserAuthentication_onceToken != -1)
  {
    +[_DASFileProtection completeUntilFirstUserAuthentication];
  }

  v3 = completeUntilFirstUserAuthentication_fileCompletionCompleteUntilFirstUserAuthentication;

  return v3;
}

+ (id)complete
{
  if (complete_onceToken != -1)
  {
    +[_DASFileProtection complete];
  }

  v3 = complete_fileCompletionComplete;

  return v3;
}

- (BOOL)indicatesProtection
{
  fileProtection = self->_fileProtection;
  if (fileProtection)
  {
    LOBYTE(fileProtection) = ![(NSString *)fileProtection isEqualToString:*MEMORY[0x1E696A3A8]];
  }

  return fileProtection;
}

- (_DASFileProtection)initWithProtection:(id)protection
{
  protectionCopy = protection;
  v9.receiver = self;
  v9.super_class = _DASFileProtection;
  v6 = [(_DASFileProtection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileProtection, protection);
  }

  return v7;
}

+ (_DASFileProtection)protectionWithType:(id)type
{
  typeCopy = type;
  v4 = [objc_alloc(objc_opt_class()) initWithProtection:typeCopy];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  fileProtection = self->_fileProtection;
  if (fileProtection)
  {
    [coder encodeObject:fileProtection forKey:@"fileProtection"];
  }
}

- (_DASFileProtection)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"fileProtection"])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileProtection"];
    v6 = v5;
    if (!v5)
    {
      v8 = 0;
LABEL_16:

      goto LABEL_17;
    }

    if (![v5 isEqualToString:*MEMORY[0x1E696A3A8]])
    {
      if ([v6 isEqualToString:*MEMORY[0x1E696A388]])
      {
        v7 = +[_DASFileProtection completeUntilFirstUserAuthentication];
        goto LABEL_15;
      }

      if ([v6 isEqualToString:*MEMORY[0x1E696A380]])
      {
        v7 = +[_DASFileProtection completeUnlessOpen];
        goto LABEL_15;
      }

      if ([v6 isEqualToString:*MEMORY[0x1E696A378]])
      {
        v7 = +[_DASFileProtection complete];
        goto LABEL_15;
      }

      if ([v6 isEqualToString:*MEMORY[0x1E696A398]])
      {
        v7 = +[_DASFileProtection completeWhenUserInactive];
        goto LABEL_15;
      }
    }

    v7 = +[_DASFileProtection none];
LABEL_15:
    v8 = v7;
    goto LABEL_16;
  }

  v8 = +[_DASFileProtection none];
LABEL_17:

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      if (!self->_fileProtection)
      {
        fileProtection = [(_DASFileProtection *)v5 fileProtection];

        if (!fileProtection)
        {
          v10 = 1;
          goto LABEL_12;
        }

        if (!self->_fileProtection)
        {
          goto LABEL_10;
        }
      }

      fileProtection2 = [(_DASFileProtection *)v6 fileProtection];

      if (fileProtection2)
      {
        fileProtection = self->_fileProtection;
        fileProtection3 = [(_DASFileProtection *)v6 fileProtection];
        v10 = [(NSString *)fileProtection isEqual:fileProtection3];
      }

      else
      {
LABEL_10:
        v10 = 0;
      }

LABEL_12:

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_13:

  return v10;
}

@end