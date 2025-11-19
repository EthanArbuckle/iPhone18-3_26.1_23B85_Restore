@interface SUUISearchRequest
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SUUISearchRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSNumber *)self->_searchHintIndex copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_searchHintOriginalTerm copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_term copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSURL *)self->_url copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

@end