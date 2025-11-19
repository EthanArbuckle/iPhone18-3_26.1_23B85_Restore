@interface EMListUnsubscribeMessageGenerator
+ (id)dateString;
+ (id)localizedBodyForCommand:(id)a3;
+ (id)messageHeadersWithCommand:(id)a3 headersFactory:(id)a4;
+ (id)senderForCommand:(id)a3;
@end

@implementation EMListUnsubscribeMessageGenerator

+ (id)messageHeadersWithCommand:(id)a3 headersFactory:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"EMListUnsubscribeMessageGenerator.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"command"}];
  }

  v9 = [v8 mutableMessageHeaders];
  [v9 setHeader:@"auto-replied" forKey:*MEMORY[0x1E699B080]];
  [v9 setHeader:@"true" forKey:*MEMORY[0x1E699B198]];
  v10 = [v7 mailtoValues];
  if (!v10)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"EMListUnsubscribeMessageGenerator.m" lineNumber:26 description:@"Mailto value are missing"];
  }

  v11 = [v10 subject];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F45FD218;
  }

  [v9 setHeader:v13 forKey:*MEMORY[0x1E699B178]];

  v14 = [v10 address];
  v24[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [v9 setAddressListForTo:v15];

  v16 = [a1 senderForCommand:v7];
  v23 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  [v9 setAddressListForSender:v17];

  v18 = [a1 dateString];
  [v9 setHeader:v18 forKey:*MEMORY[0x1E699B0D8]];

  v19 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)localizedBodyForCommand:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AEC0];
  v5 = _EFLocalizedString();
  v6 = [v3 mailtoValues];
  v7 = [v6 subject];
  v8 = [v4 stringWithFormat:v5, v7];

  return v8;
}

+ (id)senderForCommand:(id)a3
{
  v5 = a3;
  [a1 doesNotRecognizeSelector:a2];
  __assert_rtn("+[EMListUnsubscribeMessageGenerator senderForCommand:]", "EMListUnsubscribeMessageGenerator.m", 43, "0");
}

+ (id)dateString
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [v2 ec_descriptionForMimeHeaders];

  return v3;
}

@end