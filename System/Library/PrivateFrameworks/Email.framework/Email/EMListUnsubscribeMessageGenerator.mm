@interface EMListUnsubscribeMessageGenerator
+ (id)dateString;
+ (id)localizedBodyForCommand:(id)command;
+ (id)messageHeadersWithCommand:(id)command headersFactory:(id)factory;
+ (id)senderForCommand:(id)command;
@end

@implementation EMListUnsubscribeMessageGenerator

+ (id)messageHeadersWithCommand:(id)command headersFactory:(id)factory
{
  v24[1] = *MEMORY[0x1E69E9840];
  commandCopy = command;
  factoryCopy = factory;
  if (!commandCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMListUnsubscribeMessageGenerator.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"command"}];
  }

  mutableMessageHeaders = [factoryCopy mutableMessageHeaders];
  [mutableMessageHeaders setHeader:@"auto-replied" forKey:*MEMORY[0x1E699B080]];
  [mutableMessageHeaders setHeader:@"true" forKey:*MEMORY[0x1E699B198]];
  mailtoValues = [commandCopy mailtoValues];
  if (!mailtoValues)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"EMListUnsubscribeMessageGenerator.m" lineNumber:26 description:@"Mailto value are missing"];
  }

  subject = [mailtoValues subject];
  v12 = subject;
  if (subject)
  {
    v13 = subject;
  }

  else
  {
    v13 = &stru_1F45FD218;
  }

  [mutableMessageHeaders setHeader:v13 forKey:*MEMORY[0x1E699B178]];

  address = [mailtoValues address];
  v24[0] = address;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [mutableMessageHeaders setAddressListForTo:v15];

  v16 = [self senderForCommand:commandCopy];
  v23 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  [mutableMessageHeaders setAddressListForSender:v17];

  dateString = [self dateString];
  [mutableMessageHeaders setHeader:dateString forKey:*MEMORY[0x1E699B0D8]];

  v19 = *MEMORY[0x1E69E9840];

  return mutableMessageHeaders;
}

+ (id)localizedBodyForCommand:(id)command
{
  commandCopy = command;
  v4 = MEMORY[0x1E696AEC0];
  v5 = _EFLocalizedString();
  mailtoValues = [commandCopy mailtoValues];
  subject = [mailtoValues subject];
  v8 = [v4 stringWithFormat:v5, subject];

  return v8;
}

+ (id)senderForCommand:(id)command
{
  commandCopy = command;
  [self doesNotRecognizeSelector:a2];
  __assert_rtn("+[EMListUnsubscribeMessageGenerator senderForCommand:]", "EMListUnsubscribeMessageGenerator.m", 43, "0");
}

+ (id)dateString
{
  date = [MEMORY[0x1E695DF00] date];
  ec_descriptionForMimeHeaders = [date ec_descriptionForMimeHeaders];

  return ec_descriptionForMimeHeaders;
}

@end