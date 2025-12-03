@interface DTActivityTraceTapLocalShuttle
- (void)addPidToExecEntriesFromMapping:(id)mapping;
- (void)executeStopOnItinerary:(id)itinerary;
@end

@implementation DTActivityTraceTapLocalShuttle

- (void)executeStopOnItinerary:(id)itinerary
{
  itineraryCopy = itinerary;
  mode = [(XRMobileAgent *)self mode];
  v6 = mode;
  if (mode == *MEMORY[0x277D036C8])
  {
    v17.receiver = self;
    v17.super_class = DTActivityTraceTapLocalShuttle;
    [(XRMobileAgent *)&v17 executeStopOnItinerary:itineraryCopy];
    self->_didPrepare = 0;
    loaderStop = self->_loaderStop;
    configuration = [(DTActivityTraceTapLocalShuttle *)self configuration];
    v9 = [(DTOSLogLoader *)loaderStop ticketToPrepare:self configuration:configuration];

    v10 = self->_loaderStop;
    v11 = @"Preparing Stream";
LABEL_9:
    [itineraryCopy setNextStop:v10 mode:v11 ticket:v9];

    goto LABEL_23;
  }

  if (mode == @"Preparing Stream")
  {
    self->_didPrepare = 1;
    self->_didStart = 0;
    goto LABEL_22;
  }

  if (mode == @"Starting Stream")
  {
    v12 = 52;
    goto LABEL_21;
  }

  if (mode != @"Waiting")
  {
    if (mode != @"Stopping Stream")
    {
      if (mode != @"Fetching")
      {
        v16.receiver = self;
        v16.super_class = DTActivityTraceTapLocalShuttle;
        [(XRMobileAgent *)&v16 executeStopOnItinerary:itineraryCopy];
        goto LABEL_23;
      }

LABEL_22:
      [itineraryCopy setNextStop:self->_ownersDock mode:@"Waiting"];
      goto LABEL_23;
    }

    v12 = 54;
LABEL_21:
    *(&self->super.super.isa + v12) = 1;
    goto LABEL_22;
  }

  if (self->_shouldStart && !self->_didStart)
  {
    v9 = [(DTOSLogLoader *)self->_loaderStop ticketToStartStream:self];
    v10 = self->_loaderStop;
    v11 = @"Starting Stream";
    goto LABEL_9;
  }

  if (self->_shouldStop && !self->_didStop)
  {
    v9 = [(DTOSLogLoader *)self->_loaderStop ticketToStopStream:self];
    v10 = self->_loaderStop;
    v11 = @"Stopping Stream";
    goto LABEL_9;
  }

  if (self->_shouldFetch)
  {
    commonFetchTicket = self->_commonFetchTicket;
    if (!commonFetchTicket)
    {
      v14 = [(DTOSLogLoader *)self->_loaderStop ticketToFetchData:self window:self->_fetchWindow fetchStartTime:self->_fetchStartTime];
      v15 = self->_commonFetchTicket;
      self->_commonFetchTicket = v14;

      commonFetchTicket = self->_commonFetchTicket;
    }

    [itineraryCopy setNextStop:self->_loaderStop mode:@"Fetching" ticket:commonFetchTicket];
  }

  else
  {
    [itineraryCopy revisit];
  }

LABEL_23:
}

- (void)addPidToExecEntriesFromMapping:(id)mapping
{
  if (self->_processDetectionCallback)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_247FB980C;
    v3[3] = &unk_278EF2F48;
    v3[4] = self;
    [mapping enumerateObjectsAndIntegerKeys:v3];
  }
}

@end