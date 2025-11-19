@interface MFMessageLoadingContextEvent
- (MFMailMessage)message;
- (MFMessageLoadingContext)context;
- (NSError)smimeError;
- (id)_descriptionForDebugging:(BOOL)a3;
@end

@implementation MFMessageLoadingContextEvent

- (NSError)smimeError
{
  v2 = [(MFMessageLoadingContextEvent *)self loadedBody];
  v3 = [v2 topLevelPart];
  v4 = [v3 SMIMEError];

  return v4;
}

- (id)_descriptionForDebugging:(BOOL)a3
{
  v3 = a3;
  v5 = [(MFMessageLoadingContextEvent *)self context];
  v6 = [v5 message];

  v7 = MEMORY[0x1E696AD60];
  v8 = objc_opt_class();
  v9 = v6;
  if (!v3)
  {
    v9 = [v6 messageID];
  }

  v10 = [v7 stringWithFormat:@"<%@: %p> message %@", v8, self, v9];
  if (!v3)
  {
  }

  [(MFMessageLoadingContextEvent *)self hasLoadedCompleteBody];
  v11 = NSStringFromBOOL();
  [(MFMessageLoadingContextEvent *)self hasLoadedBestAlternativePart];
  v12 = NSStringFromBOOL();
  [v10 appendFormat:@" hLCB=%@ hLBAP=%@ remainingBytes=%lu", v11, v12, -[MFMessageLoadingContextEvent remainingBytes](self, "remainingBytes")];

  if (v3)
  {
    v13 = [(MFMessageLoadingContextEvent *)self error];

    if (v13)
    {
      v14 = [(MFMessageLoadingContextEvent *)self error];
      [v10 appendFormat:@" error: %@", v14];
    }

    v15 = [(MFMessageLoadingContextEvent *)self smimeError];

    if (v15)
    {
      v16 = [(MFMessageLoadingContextEvent *)self smimeError];
      [v10 appendFormat:@" SMIME error: %@", v16];
    }

    v17 = [(MFMessageLoadingContextEvent *)self content];
    v18 = [v17 count];

    if (v18)
    {
      v19 = [(MFMessageLoadingContextEvent *)self content];
      [v10 appendFormat:@" content: %@", v19];
      goto LABEL_18;
    }
  }

  else
  {
    v20 = [(MFMessageLoadingContextEvent *)self error];

    if (v20)
    {
      v21 = [(MFMessageLoadingContextEvent *)self error];
      v22 = [v21 domain];
      v23 = [(MFMessageLoadingContextEvent *)self error];
      [v10 appendFormat:@" error: %@/%ld", v22, objc_msgSend(v23, "code")];
    }

    v24 = [(MFMessageLoadingContextEvent *)self smimeError];

    if (v24)
    {
      v25 = [(MFMessageLoadingContextEvent *)self smimeError];
      v26 = [v25 domain];
      v27 = [(MFMessageLoadingContextEvent *)self smimeError];
      [v10 appendFormat:@" SMIME error: %@/%ld", v26, objc_msgSend(v27, "code")];
    }
  }

  v28 = [(MFMessageLoadingContextEvent *)self content];

  if (!v28)
  {
    goto LABEL_19;
  }

  v19 = [(MFMessageLoadingContextEvent *)self content];
  [v10 appendFormat:@" %lu content items", objc_msgSend(v19, "count")];
LABEL_18:

LABEL_19:

  return v10;
}

- (MFMailMessage)message
{
  v2 = [(MFMessageLoadingContextEvent *)self context];
  v3 = [v2 message];

  return v3;
}

- (MFMessageLoadingContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end