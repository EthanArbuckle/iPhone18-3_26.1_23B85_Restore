@interface _SuggestionsMessageBodyLoaderClient
- (_SuggestionsMessageBodyLoaderClient)initWithLibrary:(id)a3 message:(id)a4 semaphore:(id)a5;
- (double)ordering;
- (void)dealloc;
@end

@implementation _SuggestionsMessageBodyLoaderClient

- (_SuggestionsMessageBodyLoaderClient)initWithLibrary:(id)a3 message:(id)a4 semaphore:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _SuggestionsMessageBodyLoaderClient;
  v12 = [(_SuggestionsMessageBodyLoaderClient *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_library, a3);
    objc_storeStrong(&v13->_message, a4);
    objc_storeStrong(&v13->_semaphore, a5);
  }

  return v13;
}

- (double)ordering
{
  v3 = [(MFMailMessage *)self->_message headersIfAvailable];

  if (!v3)
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