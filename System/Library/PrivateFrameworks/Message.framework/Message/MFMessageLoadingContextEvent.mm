@interface MFMessageLoadingContextEvent
- (MFMailMessage)message;
- (MFMessageLoadingContext)context;
- (NSError)smimeError;
- (id)_descriptionForDebugging:(BOOL)debugging;
@end

@implementation MFMessageLoadingContextEvent

- (NSError)smimeError
{
  loadedBody = [(MFMessageLoadingContextEvent *)self loadedBody];
  topLevelPart = [loadedBody topLevelPart];
  sMIMEError = [topLevelPart SMIMEError];

  return sMIMEError;
}

- (id)_descriptionForDebugging:(BOOL)debugging
{
  debuggingCopy = debugging;
  context = [(MFMessageLoadingContextEvent *)self context];
  message = [context message];

  v7 = MEMORY[0x1E696AD60];
  v8 = objc_opt_class();
  messageID = message;
  if (!debuggingCopy)
  {
    messageID = [message messageID];
  }

  v10 = [v7 stringWithFormat:@"<%@: %p> message %@", v8, self, messageID];
  if (!debuggingCopy)
  {
  }

  [(MFMessageLoadingContextEvent *)self hasLoadedCompleteBody];
  v11 = NSStringFromBOOL();
  [(MFMessageLoadingContextEvent *)self hasLoadedBestAlternativePart];
  v12 = NSStringFromBOOL();
  [v10 appendFormat:@" hLCB=%@ hLBAP=%@ remainingBytes=%lu", v11, v12, -[MFMessageLoadingContextEvent remainingBytes](self, "remainingBytes")];

  if (debuggingCopy)
  {
    error = [(MFMessageLoadingContextEvent *)self error];

    if (error)
    {
      error2 = [(MFMessageLoadingContextEvent *)self error];
      [v10 appendFormat:@" error: %@", error2];
    }

    smimeError = [(MFMessageLoadingContextEvent *)self smimeError];

    if (smimeError)
    {
      smimeError2 = [(MFMessageLoadingContextEvent *)self smimeError];
      [v10 appendFormat:@" SMIME error: %@", smimeError2];
    }

    content = [(MFMessageLoadingContextEvent *)self content];
    v18 = [content count];

    if (v18)
    {
      content2 = [(MFMessageLoadingContextEvent *)self content];
      [v10 appendFormat:@" content: %@", content2];
      goto LABEL_18;
    }
  }

  else
  {
    error3 = [(MFMessageLoadingContextEvent *)self error];

    if (error3)
    {
      error4 = [(MFMessageLoadingContextEvent *)self error];
      domain = [error4 domain];
      error5 = [(MFMessageLoadingContextEvent *)self error];
      [v10 appendFormat:@" error: %@/%ld", domain, objc_msgSend(error5, "code")];
    }

    smimeError3 = [(MFMessageLoadingContextEvent *)self smimeError];

    if (smimeError3)
    {
      smimeError4 = [(MFMessageLoadingContextEvent *)self smimeError];
      domain2 = [smimeError4 domain];
      smimeError5 = [(MFMessageLoadingContextEvent *)self smimeError];
      [v10 appendFormat:@" SMIME error: %@/%ld", domain2, objc_msgSend(smimeError5, "code")];
    }
  }

  content3 = [(MFMessageLoadingContextEvent *)self content];

  if (!content3)
  {
    goto LABEL_19;
  }

  content2 = [(MFMessageLoadingContextEvent *)self content];
  [v10 appendFormat:@" %lu content items", objc_msgSend(content2, "count")];
LABEL_18:

LABEL_19:

  return v10;
}

- (MFMailMessage)message
{
  context = [(MFMessageLoadingContextEvent *)self context];
  message = [context message];

  return message;
}

- (MFMessageLoadingContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end