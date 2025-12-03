@interface MapsSuggestionsNotification
- (MapsSuggestionsNotification)initWithCppNotification:(const void *)notification;
- (const)darwinNotification;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MapsSuggestionsNotification

- (MapsSuggestionsNotification)initWithCppNotification:(const void *)notification
{
  v7.receiver = self;
  v7.super_class = MapsSuggestionsNotification;
  v5 = [(MapsSuggestionsNotification *)&v7 self];

  if (v5)
  {
    std::string::operator=((v5 + 8), notification);
    *(v5 + 32) = *(notification + 24);
  }

  return v5;
}

- (const)darwinNotification
{
  result = self->_notification.darwinNotification.__rep_.__s.__data_;
  if (*(&self->_notification.darwinNotification.__rep_.__l + 23) < 0)
  {
    return *result;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MapsSuggestionsNotification allocWithZone:zone];

  return [(MapsSuggestionsNotification *)v4 initWithCppNotification:&self->_notification];
}

- (id).cxx_construct
{
  *(self + 8) = 0uLL;
  *(self + 3) = 0;
  return self;
}

@end