@interface SUUISearchRequest
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SUUISearchRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSNumber *)self->_searchHintIndex copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_searchHintOriginalTerm copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_term copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSURL *)self->_url copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

@end