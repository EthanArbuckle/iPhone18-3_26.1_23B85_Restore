@interface _SuggestionsMessageBodyLoaderClient
- (_SuggestionsMessageBodyLoaderClient)initWithLibrary:(id)library message:(id)message semaphore:(id)semaphore;
- (double)ordering;
- (void)dealloc;
@end

@implementation _SuggestionsMessageBodyLoaderClient

- (_SuggestionsMessageBodyLoaderClient)initWithLibrary:(id)library message:(id)message semaphore:(id)semaphore
{
  libraryCopy = library;
  messageCopy = message;
  semaphoreCopy = semaphore;
  v15.receiver = self;
  v15.super_class = _SuggestionsMessageBodyLoaderClient;
  v12 = [(_SuggestionsMessageBodyLoaderClient *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_library, library);
    objc_storeStrong(&v13->_message, message);
    objc_storeStrong(&v13->_semaphore, semaphore);
  }

  return v13;
}

- (double)ordering
{
  headersIfAvailable = [(MFMailMessage *)self->_message headersIfAvailable];

  if (!headersIfAvailable)
  {
    return 0.0;
  }

  message = self->_message;

  [(MFMailMessage *)message dateReceivedAsTimeIntervalSince1970];
  return result;
}

- (void)dealloc
{
  dispatch_semaphore_signal(self->_semaphore);
  v3.receiver = self;
  v3.super_class = _SuggestionsMessageBodyLoaderClient;
  [(_SuggestionsMessageBodyLoaderClient *)&v3 dealloc];
}

@end