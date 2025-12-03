@interface MRDGroupSessionManagerObserverHelper
- (void)manager:(id)manager activeSessionDidChange:(id)change;
- (void)manager:(id)manager didEndHostedGroupSession:(id)session;
- (void)manager:(id)manager didJoinRemoteGroupSession:(id)session;
- (void)manager:(id)manager didLeaveRemoteGroupSession:(id)session;
- (void)manager:(id)manager didStartHostedGroupSession:(id)session;
- (void)manager:(id)manager discoveredSessionsDidChange:(id)change;
@end

@implementation MRDGroupSessionManagerObserverHelper

- (void)manager:(id)manager activeSessionDidChange:(id)change
{
  activeSessionDidChange = self->_activeSessionDidChange;
  if (activeSessionDidChange)
  {
    activeSessionDidChange[2](activeSessionDidChange, change);
  }
}

- (void)manager:(id)manager didStartHostedGroupSession:(id)session
{
  didStartHostedGroupSession = self->_didStartHostedGroupSession;
  if (didStartHostedGroupSession)
  {
    didStartHostedGroupSession[2](didStartHostedGroupSession, session);
  }
}

- (void)manager:(id)manager didEndHostedGroupSession:(id)session
{
  didEndHostedGroupSession = self->_didEndHostedGroupSession;
  if (didEndHostedGroupSession)
  {
    didEndHostedGroupSession[2](didEndHostedGroupSession, session);
  }
}

- (void)manager:(id)manager didJoinRemoteGroupSession:(id)session
{
  didJoinRemoteGroupSession = self->_didJoinRemoteGroupSession;
  if (didJoinRemoteGroupSession)
  {
    didJoinRemoteGroupSession[2](didJoinRemoteGroupSession, session);
  }
}

- (void)manager:(id)manager didLeaveRemoteGroupSession:(id)session
{
  didLeaveRemoteGroupSession = self->_didLeaveRemoteGroupSession;
  if (didLeaveRemoteGroupSession)
  {
    didLeaveRemoteGroupSession[2](didLeaveRemoteGroupSession, session);
  }
}

- (void)manager:(id)manager discoveredSessionsDidChange:(id)change
{
  discoveredSessionsDidChange = self->_discoveredSessionsDidChange;
  if (discoveredSessionsDidChange)
  {
    discoveredSessionsDidChange[2](discoveredSessionsDidChange, change);
  }
}

@end