@interface MPCPlaybackEngineEventStreamCursor
@end

@implementation MPCPlaybackEngineEventStreamCursor

void __95___MPCPlaybackEngineEventStreamCursor__statementForColumnsExpression_eventTypes_payload_limit___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x1E696AEC0];
  v7 = *(*(*(a1 + 48) + 8) + 24);
  v8 = a2;
  v9 = [v6 stringWithFormat:@"@payload_key_%d", v7];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@payload_value_%d", *(*(*(a1 + 48) + 8) + 24)];
  [*(a1 + 32) bindStringValue:v8 toParameterNamed:v9];

  if (_NSIsNSNumber())
  {
    [*(a1 + 32) bindInt64Value:objc_msgSend(v5 toParameterNamed:{"longLongValue"), v10}];
  }

  else if (_NSIsNSString())
  {
    [*(a1 + 32) bindStringValue:v5 toParameterNamed:v10];
  }

  else
  {
    v11 = [MEMORY[0x1E695DFB0] null];

    if (v11 == v5)
    {
      [*(a1 + 32) bindNullValueToParameterNamed:v10];
    }

    else if (_NSIsNSArray())
    {
      v12 = *(a1 + 32);
      v17 = 0;
      [v12 bindJSONValue:v5 toParameterNamed:v10 error:&v17];
      v13 = v17;
      if (v13)
      {
        v16 = v13;
        v15 = [MEMORY[0x1E696AAA8] currentHandler];
        [v15 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"MPCPlaybackEngineEventStream.m" lineNumber:1280 description:{@"Unable to convert payload value to JSON: %@", v5}];

        v13 = v16;
      }
    }

    else
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"MPCPlaybackEngineEventStream.m" lineNumber:1282 description:{@"Unknown payload value type for query: %@", v5}];
    }
  }

  ++*(*(*(a1 + 48) + 8) + 24);
}

@end