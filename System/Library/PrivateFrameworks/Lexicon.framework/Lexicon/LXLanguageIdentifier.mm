@interface LXLanguageIdentifier
- (LXLanguageIdentifier)init;
- (id)_detectLanguagesInString:(id)string constraints:(id)constraints error:(id *)error;
- (id)detectLanguagesInString:(id)string constraints:(id)constraints error:(id *)error;
- (id)detectLanguagesInString:(id)string error:(id *)error;
@end

@implementation LXLanguageIdentifier

- (id)detectLanguagesInString:(id)string constraints:(id)constraints error:(id *)error
{
  stringCopy = string;
  constraintsCopy = constraints;
  v10 = [(__CFString *)stringCopy length];
  v11 = MEMORY[0x1E695E0F0];
  if (v10)
  {
    v24 = 0;
    v21 = sub_1B5D22A0C(constraintsCopy);
    sub_1B5D90848(&v22, self->_impl.__ptr_, stringCopy, v21, &v24);
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = v22;
    for (i = v23; v13 != i; v13 += 32)
    {
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v16 = (v13 + 8);
      if (*(v13 + 31) < 0)
      {
        v16 = *v16;
      }

      v17 = [v15 initWithUTF8String:v16];
      v18 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v17];
      [v12 addObject:v18];
    }

    if (error)
    {
      *error = v24;
    }

    if (v12)
    {
      v19 = v12;
    }

    else
    {
      v19 = v11;
    }

    v11 = v19;

    v25 = &v22;
    sub_1B5D8EF64(&v25);
  }

  return v11;
}

- (id)detectLanguagesInString:(id)string error:(id *)error
{
  v4 = [(LXLanguageIdentifier *)self detectLanguagesInString:string constraints:0 error:error];

  return v4;
}

- (LXLanguageIdentifier)init
{
  v4.receiver = self;
  v4.super_class = LXLanguageIdentifier;
  if ([(LXLanguageIdentifier *)&v4 init])
  {
    operator new();
  }

  v2 = 0;

  return v2;
}

- (id)_detectLanguagesInString:(id)string constraints:(id)constraints error:(id *)error
{
  stringCopy = string;
  constraintsCopy = constraints;
  v10 = [(__CFString *)stringCopy length];
  v11 = MEMORY[0x1E695E0F0];
  if (v10)
  {
    v25 = 0;
    v22 = sub_1B5D22A0C(constraintsCopy);
    sub_1B5D90848(&v23, self->_impl.__ptr_, stringCopy, v22, &v25);
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = v23;
    for (i = v24; v14 != i; v14 += 32)
    {
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v16 = (v14 + 8);
      if (*(v14 + 31) < 0)
      {
        v16 = *v16;
      }

      v17 = [v15 initWithUTF8String:v16];
      v18 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v17];
      v19 = [[LXLanguageIdentifierResult alloc] initWithLocale:v18 probability:*v14];
      [v12 addObject:v19];
    }

    if (error)
    {
      *error = v25;
    }

    if (v12)
    {
      v20 = v12;
    }

    else
    {
      v20 = v11;
    }

    v11 = v20;

    v26 = &v23;
    sub_1B5D8EF64(&v26);
  }

  return v11;
}

@end