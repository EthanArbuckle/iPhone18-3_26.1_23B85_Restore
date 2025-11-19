@interface RAPBatchSubmissionStatusTicket
- (void)cancelRequest;
@end

@implementation RAPBatchSubmissionStatusTicket

- (void)cancelRequest
{
  [(GEOMapServiceFeedbackReportTicket *)self->_ticket cancel];
  ticket = self->_ticket;
  self->_ticket = 0;
}

@end