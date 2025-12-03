@interface MFListUnsubscribeMessageGenerator_iOS
+ (id)deliveryForCommand:(id)command;
+ (id)senderForCommand:(id)command;
@end

@implementation MFListUnsubscribeMessageGenerator_iOS

+ (id)deliveryForCommand:(id)command
{
  v22[1] = *MEMORY[0x1E69E9840];
  commandCopy = command;
  if (!commandCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFListUnsubscribeMessageGenerator_iOS.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"command"}];
  }

  mailtoValues = [commandCopy mailtoValues];
  if (!mailtoValues)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MFListUnsubscribeMessageGenerator_iOS.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"mailtoValues"}];
  }

  account = [mailtoValues account];
  v8 = objc_alloc_init(MEMORY[0x1E69AD748]);
  v9 = [self messageHeadersWithCommand:commandCopy headersFactory:v8];

  v10 = [self localizedBodyForCommand:commandCopy];
  v11 = objc_alloc_init(MFPlainTextDocument);
  body = [mailtoValues body];

  if (body)
  {
    v13 = MEMORY[0x1E696AEC0];
    body2 = [mailtoValues body];
    v15 = [v13 stringWithFormat:@"%@\n\n%@", body2, v10];
    [(MFPlainTextDocument *)v11 appendString:v15 withQuoteLevel:0];
  }

  else
  {
    [(MFPlainTextDocument *)v11 appendString:v10 withQuoteLevel:0];
  }

  v22[0] = v11;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v17 = [[MFOutgoingMessageDelivery alloc] initWithHeaders:v9 mixedContent:v16 textPartsAreHTML:0];
  [(MFOutgoingMessageDelivery *)v17 setArchiveAccount:account];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)senderForCommand:(id)command
{
  commandCopy = command;
  mailtoValues = [commandCopy mailtoValues];
  account = [mailtoValues account];

  senderForUnsubscribeMessage = [commandCopy senderForUnsubscribeMessage];
  emailAddressValue = [senderForUnsubscribeMessage emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v9 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [senderForUnsubscribeMessage stringValue];
  }

  v11 = stringValue;

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__13;
  v25 = __Block_byref_object_dispose__13;
  defaultEmailAddress = [account defaultEmailAddress];
  v13 = defaultEmailAddress;
  if (defaultEmailAddress)
  {
    firstEmailAddress = defaultEmailAddress;
  }

  else
  {
    firstEmailAddress = [account firstEmailAddress];
  }

  v26 = firstEmailAddress;

  if (v11)
  {
    emailAddressesAndAliases = [account emailAddressesAndAliases];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __58__MFListUnsubscribeMessageGenerator_iOS_senderForCommand___block_invoke;
    v18[3] = &unk_1E7AA4928;
    v19 = v11;
    v20 = &v21;
    [emailAddressesAndAliases enumerateKeysAndObjectsUsingBlock:v18];
  }

  v16 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v16;
}

@end