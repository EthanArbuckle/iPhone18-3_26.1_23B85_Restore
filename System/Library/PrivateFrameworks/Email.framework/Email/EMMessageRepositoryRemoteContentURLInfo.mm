@interface EMMessageRepositoryRemoteContentURLInfo
- (EMMessageRepositoryRemoteContentURLInfo)initWithCoder:(id)coder;
- (EMMessageRepositoryRemoteContentURLInfo)initWithURL:(id)l requestCount:(unint64_t)count lastSeen:(id)seen lastRequested:(id)requested;
- (void)_commonInitWithURL:(id)l requestCount:(unint64_t)count lastSeen:(id)seen lastRequested:(id)requested;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMMessageRepositoryRemoteContentURLInfo

- (EMMessageRepositoryRemoteContentURLInfo)initWithURL:(id)l requestCount:(unint64_t)count lastSeen:(id)seen lastRequested:(id)requested
{
  lCopy = l;
  seenCopy = seen;
  requestedCopy = requested;
  v16.receiver = self;
  v16.super_class = EMMessageRepositoryRemoteContentURLInfo;
  v13 = [(EMMessageRepositoryRemoteContentURLInfo *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(EMMessageRepositoryRemoteContentURLInfo *)v13 _commonInitWithURL:lCopy requestCount:count lastSeen:seenCopy lastRequested:requestedCopy];
  }

  return v14;
}

- (void)_commonInitWithURL:(id)l requestCount:(unint64_t)count lastSeen:(id)seen lastRequested:(id)requested
{
  lCopy = l;
  seenCopy = seen;
  requestedCopy = requested;
  url = self->_url;
  self->_url = lCopy;
  v17 = lCopy;

  lastSeen = self->_lastSeen;
  self->_requestCount = count;
  self->_lastSeen = seenCopy;
  v15 = seenCopy;

  lastRequested = self->_lastRequested;
  self->_lastRequested = requestedCopy;
}

- (EMMessageRepositoryRemoteContentURLInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = EMMessageRepositoryRemoteContentURLInfo;
  v5 = [(EMMessageRepositoryRemoteContentURLInfo *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_url"];
    v7 = [coderCopy decodeIntegerForKey:@"EFPropertyKey_requestCount"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_lastSeen"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_lastRequested"];
    [(EMMessageRepositoryRemoteContentURLInfo *)v5 _commonInitWithURL:v6 requestCount:v7 lastSeen:v8 lastRequested:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(EMMessageRepositoryRemoteContentURLInfo *)self url];
  [coderCopy encodeObject:v4 forKey:@"EFPropertyKey_url"];

  [coderCopy encodeInteger:-[EMMessageRepositoryRemoteContentURLInfo requestCount](self forKey:{"requestCount"), @"EFPropertyKey_requestCount"}];
  lastSeen = [(EMMessageRepositoryRemoteContentURLInfo *)self lastSeen];
  [coderCopy encodeObject:lastSeen forKey:@"EFPropertyKey_lastSeen"];

  lastRequested = [(EMMessageRepositoryRemoteContentURLInfo *)self lastRequested];
  [coderCopy encodeObject:lastRequested forKey:@"EFPropertyKey_lastRequested"];
}

@end