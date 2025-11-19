@interface MFListUnsubscribeMessageGenerator_iOS
+ (id)deliveryForCommand:(id)a3;
+ (id)senderForCommand:(id)a3;
@end

@implementation MFListUnsubscribeMessageGenerator_iOS

+ (id)deliveryForCommand:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"MFListUnsubscribeMessageGenerator_iOS.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"command"}];
  }

  v6 = [v5 mailtoValues];
  if (!v6)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"MFListUnsubscribeMessageGenerator_iOS.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"mailtoValues"}];
  }

  v7 = [v6 account];
  v8 = objc_alloc_init(MEMORY[0x1E69AD748]);
  v9 = [a1 messageHeadersWithCommand:v5 headersFactory:v8];

  v10 = [a1 localizedBodyForCommand:v5];
  v11 = objc_alloc_init(MFPlainTextDocument);
  v12 = [v6 body];

  if (v12)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = [v6 body];
    v15 = [v13 stringWithFormat:@"%@\n\n%@", v14, v10];
    [(MFPlainTextDocument *)v11 appendString:v15 withQuoteLevel:0];
  }

  else
  {
    [(MFPlainTextDocument *)v11 appendString:v10 withQuoteLevel:0];
  }

  v22[0] = v11;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v17 = [[MFOutgoingMessageDelivery alloc] initWithHeaders:v9 mixedContent:v16 textPartsAreHTML:0];
  [(MFOutgoingMessageDelivery *)v17 setArchiveAccount:v7];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)senderForCommand:(id)a3
{
  v3 = a3;
  v4 = [v3 mailtoValues];
  v5 = [v4 account];

  v6 = [v3 senderForUnsubscribeMessage];
  v7 = [v6 emailAddressValue];
  v8 = [v7 simpleAddress];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v6 stringValue];
  }

  v11 = v10;

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__13;
  v25 = __Block_byref_object_dispose__13;
  v12 = [v5 defaultEmailAddress];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v5 firstEmailAddress];
  }

  v26 = v14;

  if (v11)
  {
    v15 = [v5 emailAddressesAndAliases];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __58__MFListUnsubscribeMessageGenerator_iOS_senderForCommand___block_invoke;
    v18[3] = &unk_1E7AA4928;
    v19 = v11;
    v20 = &v21;
    [v15 enumerateKeysAndObjectsUsingBlock:v18];
  }

  v16 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v16;
}

@end