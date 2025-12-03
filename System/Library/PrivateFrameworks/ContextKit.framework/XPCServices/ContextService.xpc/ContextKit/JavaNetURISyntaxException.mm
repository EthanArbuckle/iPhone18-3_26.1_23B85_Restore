@interface JavaNetURISyntaxException
- (id)getMessage;
- (id)getReason;
- (void)dealloc;
@end

@implementation JavaNetURISyntaxException

- (id)getReason
{
  v3.receiver = self;
  v3.super_class = JavaNetURISyntaxException;
  return [(JavaLangThrowable *)&v3 getMessage];
}

- (id)getMessage
{
  v15.receiver = self;
  v15.super_class = JavaNetURISyntaxException;
  getMessage = [(JavaLangThrowable *)&v15 getMessage];
  if (self->index_ == -1)
  {
    input = self->input_;
    return JreStrcat("$$$", v4, v5, v6, v7, v8, v9, v10, getMessage);
  }

  else
  {
    v14 = self->input_;
    index = self->index_;
    return JreStrcat("$$I$$", v4, v5, v6, v7, v8, v9, v10, getMessage);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetURISyntaxException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end