@interface MRDGroupSessionManagerObserverHelper
- (void)manager:(id)a3 activeSessionDidChange:(id)a4;
- (void)manager:(id)a3 didEndHostedGroupSession:(id)a4;
- (void)manager:(id)a3 didJoinRemoteGroupSession:(id)a4;
- (void)manager:(id)a3 didLeaveRemoteGroupSession:(id)a4;
- (void)manager:(id)a3 didStartHostedGroupSession:(id)a4;
- (void)manager:(id)a3 discoveredSessionsDidChange:(id)a4;
@end

@implementation MRDGroupSessionManagerObserverHelper

- (void)manager:(id)a3 activeSessionDidChange:(id)a4
{
  activeSessionDidChange = self->_activeSessionDidChange;
  if (activeSessionDidChange)
  {
    activeSessionDidChange[2](activeSessionDidChange, a4);
  }
}

- (void)manager:(id)a3 didStartHostedGroupSession:(id)a4
{
  didStartHostedGroupSession = self->_didStartHostedGroupSession;
  if (didStartHostedGroupSession)
  {
    didStartHostedGroupSession[2](didStartHostedGroupSession, a4);
  }
}

- (void)manager:(id)a3 didEndHostedGroupSession:(id)a4
{
  didEndHostedGroupSession = self->_didEndHostedGroupSession;
  if (didEndHostedGroupSession)
  {
    didEndHostedGroupSession[2](didEndHostedGroupSession, a4);
  }
}

- (void)manager:(id)a3 didJoinRemoteGroupSession:(id)a4
{
  didJoinRemoteGroupSession = self->_didJoinRemoteGroupSession;
  if (didJoinRemoteGroupSession)
  {
    didJoinRemoteGroupSession[2](didJoinRemoteGroupSession, a4);
  }
}

- (void)manager:(id)a3 didLeaveRemoteGroupSession:(id)a4
{
  didLeaveRemoteGroupSession = self->_didLeaveRemoteGroupSession;
  if (didLeaveRemoteGroupSession)
  {
    didLeaveRemoteGroupSession[2](didLeaveRemoteGroupSession, a4);
  }
}

- (void)manager:(id)a3 discoveredSessionsDidChange:(id)a4
{
  discoveredSessionsDidChange = self->_discoveredSessionsDidChange;
  if (discoveredSessionsDidChange)
  {
    discoveredSessionsDidChange[2](discoveredSessionsDidChange, a4);
  }
}

@end