@interface CVNLPTextDecodingContext
- (CVNLPTextDecodingContext)initWithHistory:(id)a3;
- (CVNLPTextDecodingContext)initWithHistory:(id)a3 activeRange:(_NSRange)a4;
- (_NSRange)activeRange;
- (id)activeSubstring;
- (id)inactiveSubstring;
@end

@implementation CVNLPTextDecodingContext

- (CVNLPTextDecodingContext)initWithHistory:(id)a3 activeRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = CVNLPTextDecodingContext;
  v9 = [(CVNLPTextDecodingContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_history, a3);
    v10->_activeRange.location = location;
    v10->_activeRange.length = length;
  }

  return v10;
}

- (CVNLPTextDecodingContext)initWithHistory:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_length(v4, v5, v6, v7);
  active = objc_msgSend_initWithHistory_activeRange_(self, v9, v4, v8 - 1, 0);

  return active;
}

- (id)activeSubstring
{
  length = self->_activeRange.length;
  if (length)
  {
    v4 = objc_msgSend_substringWithRange_(self->_history, a2, self->_activeRange.location, length);
  }

  else
  {
    v4 = &stru_1F554FF38;
  }

  return v4;
}

- (id)inactiveSubstring
{
  v3 = self->_history;
  if (self->_activeRange.length)
  {
    v5 = v3;
    v6 = objc_msgSend_substringWithRange_(self->_history, v4, 0, self->_activeRange.location);

    v3 = v6;
  }

  return v3;
}

- (_NSRange)activeRange
{
  length = self->_activeRange.length;
  location = self->_activeRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end