@interface PARFlightResponse
+ (id)_debugResponseFromReply:(id)reply;
+ (id)responseFromReply:(id)reply;
- (id)description;
@end

@implementation PARFlightResponse

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  flightResults = [(PARFlightResponse *)self flightResults];
  v4 = [v2 stringWithFormat:@"flightResults: %@", flightResults];

  return v4;
}

+ (id)responseFromReply:(id)reply
{
  replyCopy = reply;
  v4 = [(PARResponse *)[PARFlightResponse alloc] initWithReply:replyCopy];
  data = [replyCopy data];

  if (data)
  {
    v6 = objc_alloc(MEMORY[0x1E69CA5D0]);
    data2 = [replyCopy data];
    v8 = [v6 initWithData:data2];

    v9 = [objc_alloc(MEMORY[0x1E69C9E78]) initWithProtobuf:v8];
    flights = [v9 flights];
    [(PARFlightResponse *)v4 setFlightResults:flights];
  }

  return v4;
}

+ (id)_debugResponseFromReply:(id)reply
{
  replyCopy = reply;
  v4 = [(PARResponse *)[PARFlightResponse alloc] initWithReply:replyCopy];
  rawResponse = [replyCopy rawResponse];

  if (rawResponse)
  {
    v6 = [rawResponse parsec_mapObjectsUsingBlock:&__block_literal_global_208];
    flightResults = v4->_flightResults;
    v4->_flightResults = v6;
  }

  return v4;
}

@end